Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC61E1F06AE
	for <lists+kexec@lfdr.de>; Sat,  6 Jun 2020 15:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYF4rA3CMM8rVCGOkk3Rta9YI99bgtNVo1ynJNMDOTg=; b=S5eEdxY2xlXglp
	n6QUjwvACnhzGe7aeOQbWwTEbVcn4Re00jkRUOj+Q1jQrenKnZwJdlMuEeDsy8cPEjkeyKfAYy0dW
	N1BsDRk6q+zgMetbZYGVtKpoAqLzYctzCaYqjCHZbO7YIlitUmyBzynBwmmWcjb7nvKJSDMZOghiV
	OcDgDkiH3Xmf7ZC5yAo5doLUpQhhHP+oHbrQJDxWrz/embkbj+6w94UGxmOYGKEpA+aoOSYY3bd4b
	WTR1gb03WPUPUD5e4yoo/iLN3rIy1/sXw50Uoy+SGOao659510ZAWUQpVIsOjNDvFhVCrmZ0/y64L
	jXYAGD+hPump2b00F7vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhYjv-00068g-Mn; Sat, 06 Jun 2020 13:19:59 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhYjh-0005x7-1C
 for kexec@lists.infradead.org; Sat, 06 Jun 2020 13:19:46 +0000
Received: from madeliefje.horms.nl (unknown [83.161.246.101])
 by kirsty.vergenet.net (Postfix) with ESMTPA id AA2D125B805;
 Sat,  6 Jun 2020 23:19:35 +1000 (AEST)
Received: by madeliefje.horms.nl (Postfix, from userid 7100)
 id 80F1A36C7; Sat,  6 Jun 2020 15:19:33 +0200 (CEST)
Date: Sat, 6 Jun 2020 15:19:33 +0200
From: Simon Horman <horms@verge.net.au>
To: Chen Zhou <chenzhou10@huawei.com>
Subject: Re: [PATCH v3] arm64: kdump: add another DT property to crash dump
 kernel's dtb
Message-ID: <20200606131933.GA24391@vergenet.net>
References: <20200521083257.53415-1-chenzhou10@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521083257.53415-1-chenzhou10@huawei.com>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_061945_221394_25C28884 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.4.237.240 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 04:32:57PM +0800, Chen Zhou wrote:
> Currently, there is only one crash kernel region on arm64, we add
> another region "crash kernel low" used for crash dump kernel devices.
> 
> To do this, we add DT property "linux,low-memory-range" to crash
> dump kernel's dtb to pass the low region.
> 
> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
> ---
> For "support reserving crashkernel above 4G on arm64 kdump", we need
> to modify the kexec-tools.
> 
> Changes since [v2]:
> - Rebase to latest kexec-tools code.
> 
> Changes since [v1]:
> - Add another DT property "linux,low-memory-range" to crash dump kernel's
> dtb to pass the low region instead of reusing "linux,usable-memory-range".
> 
> [1]: http://lists.infradead.org/pipermail/kexec/2019-April/022792.html
> [2]: http://lists.infradead.org/pipermail/kexec/2019-August/023569.html

Thanks.

I think it would be appropriate for me to apply this change to
kexec-tools once the corresponding changes have been accepted to
the kernel.

Please repost when that is the case.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
