Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 308C51C42F5
	for <lists+kexec@lfdr.de>; Mon,  4 May 2020 19:34:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2sVeqhiVDeV6OtNNSERijqeSRuPdUCn4FJJwwg1CNg=; b=tY0Ix+6DNLe/d0
	bjaaV0AuLvxUuNyx/Sq3hJeZBd7We7fjKhCnXWO3HdvYTwwEA+pnXvKksbvLn9p/l1+wI9xpKjXWe
	ecjnsnPJuKQDia5Zn6Tb5MxoOcFRpDK5ho18uTAxlDUGMoGxGNMjmXEtEKvFfFc8a2ZZ8tVx+LjMb
	6y9xw3+XeYOaxVDiBiOcN91ieKBIRXdnhXFYl8tGaHcvfu7HvLk2UiTJIiru15O6aHJdZEXM1HcMd
	cg0lcMMGOX+OE8gH+S0CB9D5XX8/rC7pvxOMZmrc6w/PhZgH4zKN3xF/qTzCD5TOd1SsW0BMm0zuk
	9XuZriSZWr0LBIWVmXtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVezS-0008HV-73; Mon, 04 May 2020 17:34:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVezP-0008H8-0k; Mon, 04 May 2020 17:34:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C090320663;
 Mon,  4 May 2020 17:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588613686;
 bh=SYLOk8zAXRq6cpLb63mzYrQC0BmeoAJMWTarcKweCJs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oV7393kwsqjxUVvePC/KwNmJq/9FkNT3BS+IF2obey7V/PlZY7huwvvNn3/ac/C8J
 5ACm7icZ1fjWxKRhxkWRiTYvWE/MraAJ1Op5IUfA5jYEuRGhY18H90cy01gGahApbc
 MjiAgkl4s1IFSRzlvCOqcObUlEuJTr0JtI5n2w8s=
Date: Mon, 4 May 2020 18:34:41 +0100
From: Will Deacon <will@kernel.org>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v2 2/2] Documentation/vmcoreinfo: Add documentation for
 'KERNELPACMASK'
Message-ID: <20200504173440.GE1833@willie-the-truck>
References: <1587968702-19996-1-git-send-email-amit.kachhap@arm.com>
 <1587968702-19996-2-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587968702-19996-2-git-send-email-amit.kachhap@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_103447_077783_2B993CCC 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Baoquan He <bhe@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Dave Young <dyoung@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 11:55:02AM +0530, Amit Daniel Kachhap wrote:
> Add documentation for KERNELPACMASK variable being added to the vmcoreinfo.
> 
> It indicates the PAC bits mask information of signed kernel pointers if
> Armv8.3-A Pointer Authentication feature is present.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Dave Young <dyoung@redhat.com>
> Cc: Baoquan He <bhe@redhat.com>
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
>  Documentation/admin-guide/kdump/vmcoreinfo.rst | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/admin-guide/kdump/vmcoreinfo.rst b/Documentation/admin-guide/kdump/vmcoreinfo.rst
> index 007a6b8..5cc3ee6 100644
> --- a/Documentation/admin-guide/kdump/vmcoreinfo.rst
> +++ b/Documentation/admin-guide/kdump/vmcoreinfo.rst
> @@ -393,6 +393,12 @@ KERNELOFFSET
>  The kernel randomization offset. Used to compute the page offset. If
>  KASLR is disabled, this value is zero.
>  
> +KERNELPACMASK
> +-------------
> +
> +Indicates the PAC bits mask information if Pointer Authentication is
> +enabled and address authentication feature is present.

This is a bit cryptic. How about:

  The mask to extract the Pointer Authentication Code from a kernel virtual
  address.

Will

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
