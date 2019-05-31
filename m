Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B6430B86
	for <lists+kexec@lfdr.de>; Fri, 31 May 2019 11:29:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ymx+/oN8p7nRcYxRgp5H42Bt9y9rheTsDsB7OGNG0oo=; b=IzihjyVusnB0WH
	lK5I5QTjhkXSOY2IBKLFKNZOVw3D4AdwQ72lGqj35K82dlA0eFmOna36eE5KbwrEtS2UbVGF8b/Hn
	0/C0facKHhbne7moaXu0EQvvpsINtNMDe+hY72R6VTizSUKGXQ6YBROeKO6PXMJKXZ9vwB7Q0LbWC
	QsyDIdCiNWGEMIaiuSVK3nF4Y0A4u6tOfMj+f/hks06JnRUSHsQOPye6WmhO+VmZZJQo1ss9UCQC0
	x9DDD6SIsE9xV8x41fsGbJZf6OlrzkkA9VxoFLNMF/1Rr5HMQU6Me9hYGWHrimq8a4NUf2JKxKNI4
	VtIKe5JyVK5uurbBq+nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdr4-0006qw-8a; Fri, 31 May 2019 09:29:42 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdr0-0006qV-UR
 for kexec@lists.infradead.org; Fri, 31 May 2019 09:29:40 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 0C3D925AE77;
 Fri, 31 May 2019 19:29:38 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 0C4AC9401DB; Fri, 31 May 2019 11:29:36 +0200 (CEST)
Date: Fri, 31 May 2019 11:29:36 +0200
From: Simon Horman <horms@verge.net.au>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH] x86: Handle 64bit framebuffer memory address properly
Message-ID: <20190531092935.sfpbxeu7uquogtd5@verge.net.au>
References: <20181123092633.16111-1-kasong@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181123092633.16111-1-kasong@redhat.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_022939_134197_B96B3A98 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: dyoung@redhat.com, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Nov 23, 2018 at 05:26:33PM +0800, Kairui Song wrote:
> In a EFI system, the frame buffer address is 64bit, so currently
> if the address is beyound 4G, kexec will set wrong address due to
> truncate.
> 
> Linux kernel commit ae2ee627dc87 ('efifb: Add support for 64-bit
> frame buffer addresses') added support for 64bit frame buffer
> address, an 'ext_lfb_base' field is added as the upper 32-bits of
> the frame buffer, and introduced a new capability flag
> 'VIDEO_TYPE_CAPABILITY_64BIT_BASE' to indicate if the extend field is
> used.
> 
> This patch adopts this change, set proper extent address and capability
> flag when the address is beyound 4G.
> 
> Signed-off-by: Kairui Song <kasong@redhat.com>

Sorry for letting this slip through the cracks.
Please let me know if this is still relevant.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
