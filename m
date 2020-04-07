Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E008B1A0D2B
	for <lists+kexec@lfdr.de>; Tue,  7 Apr 2020 14:00:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvi33mjNH/6kBVBtgaNREN265V62PcTRFrEJFvYpEcQ=; b=FOTkyd6DRIYfvu
	LP2tecaf+W+9nsn4Wn9xBnId6L2M1ISwgaG0gbCtW/UNkVMT4pfbLWxxDZiROLR5IY4WO2Fh616Cw
	0QxLQYAeJnaYLrwySo8MicsIOFhBqbV82pD/hDIJAqAZqcuo/teapgX0m7T2MlQ+hCwd4XhmIJRE1
	zBUg2HQETeVjXuwPUS7lgrZHxiQ1aoRrb/aLkLX73L8CTsQ/q9K6WbhJnfLzdP9ghkU5PIqy6W995
	2Wzf3sT0eGuB6JHDBh9RWgXo8WMyFOLsQuCkhd1tfXVcuo2XEFuPT6JHHovHJZJ8V8SPxZAm/7sqF
	2GvYpap+qLmiVZMCrfUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLmu6-0008Nu-4k; Tue, 07 Apr 2020 12:00:30 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLmu3-0008Mt-0V
 for kexec@lists.infradead.org; Tue, 07 Apr 2020 12:00:28 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 8740525B75F;
 Tue,  7 Apr 2020 22:00:23 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 6B6E41B30; Tue,  7 Apr 2020 14:00:21 +0200 (CEST)
Date: Tue, 7 Apr 2020 14:00:21 +0200
From: Simon Horman <horms@verge.net.au>
To: Varad Gautam <vrd@amazon.de>
Subject: Re: [PATCH v2 1/3] kexec-xen: Introduce xen_get_kexec_range to wrap
 xc_kexec_get_range
Message-ID: <20200407120021.GB17530@vergenet.net>
References: <1585760237-26924-1-git-send-email-vrd@amazon.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585760237-26924-1-git-send-email-vrd@amazon.de>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_050027_198755_11C970A9 
X-CRM114-Status: UNSURE (   5.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.4.237.240 listed in wl.mailspike.net]
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
Cc: kexec@lists.infradead.org, dwmw@amazon.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 06:57:15PM +0200, Varad Gautam wrote:
> And convert all callers of xc_kexec_get_range to use this. Allows reusing
> sanity checks for other KEXEC_RANGEs
> 
> v2: define xen_get_kexec_range outside of HAVE_LIBXENCTRL

Thanks, series applied.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
