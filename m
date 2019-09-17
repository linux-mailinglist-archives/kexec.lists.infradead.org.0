Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEFBB46D9
	for <lists+kexec@lfdr.de>; Tue, 17 Sep 2019 07:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxepcIx16Or41pqExRoe3JFpH3euirs5JPdrHXcZLWk=; b=mJtjsBiaz4wQQJ
	OwdT0HkzL0/WaAAc2zwUCy4PGL+3GklDn1QQjxPAuwTPq5wk+uWn7EmGmqBztynZo8Y0gMBQ5a6L5
	ft8dfYKzGhldQ6X9pv9lwuwOf3xNverre77dbKedYjAgguvqK9LZnHh2pLKn9nDaTONTpTT6aMZPM
	4za7sv9CMQCoSWJOSg89MHg5a4oxfqBorQRhwvRBrXDqt85ZQoZEJQvx5Le2QYNQtst63cXW8msHI
	LjBzAvdn0EeODPrWzV3krxbaqWngk3B2eBAXgiyKCGhhKj8It6o324RvqqZnrVPX2Eaa3ksCoCp2P
	qn/z6ns+QEMSZdHUJFvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA63o-0007CR-OS; Tue, 17 Sep 2019 05:29:56 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA63g-0007BT-TG
 for kexec@lists.infradead.org; Tue, 17 Sep 2019 05:29:50 +0000
Received: by mail-io1-xd42.google.com with SMTP id r26so4569517ioh.8
 for <kexec@lists.infradead.org>; Mon, 16 Sep 2019 22:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ab1BIaOVRlo45shl5hYF8+8KUoncf0raBSYUdPucCFE=;
 b=UTCVmhShBUCgw0+mGYlRpWkBbi/cAEzgrbyaQGBpqHPGsiNgWHNVo0uWL4pbK8b1q9
 6EC+qTXt6he4zPYgD1O84oajwgx9tfNLUdNNP/qwO1sanzYWVUWK5HrtlP7agot8J3kt
 Rk2YY5d+JWJ9xqc9bThxoG9BkVISMWD8GneOGj918cPTtUq1pX2pnmXH5Og1dBv4kmye
 JfN3IfqBzLQ+LtHTl1XneDH0xH2NO/nF7FGmyHJ7yyz2ZURz/FgIeLW5xl6sU8AOaL9x
 SycjOvNYWyZgIAN3seQnD5JZzOVjIAHyXMCNmGyN2aPV9hbmzUy9D27H8lmoElXpVlxB
 8iAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ab1BIaOVRlo45shl5hYF8+8KUoncf0raBSYUdPucCFE=;
 b=WaDxg8fgUPARkuHXUgayPgJYFydloXtSjVFVK0AN08k9I7ezV/3LoW5ByVfjV1PYim
 VRFiqJagytxRCX1LYkFyDqOKRfL5bt7+bS0haFf5GOYQB81TUJEtI8mUYy4L74N+MLys
 Tx4n9UTpteE+4A19OB3sfuCq4XSVr07ezSh5QQ2idR9XOdla1JE1wYoHYJHO6S55BvUi
 z5hJAXy5rLQngBGEytX/Oh5ivZ35fBRGsJTliCsNlxoBV5/8V4wJ4WGwo3WdM24AP4j7
 +NSmnRI4KdRQwsA0O5XyKqg9bZKM831hw1cYJN8zRsS9t4b8hFmyLRs3pX1BMYls5Ye5
 zF9w==
X-Gm-Message-State: APjAAAVgt48RpiRydlM8oqwrKQRUdMKoNgJ5zH7gI2hKKOTBmIb5mvgJ
 YuRU8HB4fcmRfLUmd2ZGGdsBZlXGGVVkkQjMZA==
X-Google-Smtp-Source: APXvYqx6YyFP5lJ+JMKr/Nnwgdip0Lb8u+tQMxSdq0bqQTfdWp4cM3ZDBkMx7Ph6VW/mTl+Sb8E+jpK4K74RAu95/+Y=
X-Received: by 2002:a02:65cd:: with SMTP id u196mr2198982jab.3.1568698187076; 
 Mon, 16 Sep 2019 22:29:47 -0700 (PDT)
MIME-Version: 1.0
References: <1568256617-14030-1-git-send-email-kernelfans@gmail.com>
In-Reply-To: <1568256617-14030-1-git-send-email-kernelfans@gmail.com>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Tue, 17 Sep 2019 13:29:35 +0800
Message-ID: <CAFgQCTvKpPEP1UywcGcC2Mo4mzzZR+ff7M3L9QN_U+hfk31ijQ@mail.gmail.com>
Subject: Re: [PATCH] powerpc/crashkernel: take mem option into account
To: linuxppc-dev@lists.ozlabs.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_222948_970058_5F19A846 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelfans[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Michael Ellerman <mpe@ellerman.id.au>,
 Hari Bathini <hbathini@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Cc Kexec list. And keep the original content.

On Thu, Sep 12, 2019 at 10:50 AM Pingfan Liu <kernelfans@gmail.com> wrote:
>
> 'mem=" option is an easy way to put high pressure on memory during some
> test. Hence in stead of total mem, the effective usable memory size should
> be considered when reserving mem for crashkernel. Otherwise the boot up may
> experience oom issue.
>
> E.g passing
> crashkernel="2G-4G:384M,4G-16G:512M,16G-64G:1G,64G-128G:2G,128G-:4G", and
> mem=5G on a 256G machine.
>
> Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
> Cc: Hari Bathini <hbathini@linux.ibm.com>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> To: linuxppc-dev@lists.ozlabs.org
> ---
> v1 -> v2: fix the printk info about the total mem
>  arch/powerpc/kernel/machine_kexec.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/arch/powerpc/kernel/machine_kexec.c b/arch/powerpc/kernel/machine_kexec.c
> index c4ed328..eec96dc 100644
> --- a/arch/powerpc/kernel/machine_kexec.c
> +++ b/arch/powerpc/kernel/machine_kexec.c
> @@ -114,11 +114,12 @@ void machine_kexec(struct kimage *image)
>
>  void __init reserve_crashkernel(void)
>  {
> -       unsigned long long crash_size, crash_base;
> +       unsigned long long crash_size, crash_base, total_mem_sz;
>         int ret;
>
> +       total_mem_sz = memory_limit ? memory_limit : memblock_phys_mem_size();
>         /* use common parsing */
> -       ret = parse_crashkernel(boot_command_line, memblock_phys_mem_size(),
> +       ret = parse_crashkernel(boot_command_line, total_mem_sz,
>                         &crash_size, &crash_base);
>         if (ret == 0 && crash_size > 0) {
>                 crashk_res.start = crash_base;
> @@ -185,7 +186,7 @@ void __init reserve_crashkernel(void)
>                         "for crashkernel (System RAM: %ldMB)\n",
>                         (unsigned long)(crash_size >> 20),
>                         (unsigned long)(crashk_res.start >> 20),
> -                       (unsigned long)(memblock_phys_mem_size() >> 20));
> +                       (unsigned long)(total_mem_sz >> 20));
>
>         if (!memblock_is_region_memory(crashk_res.start, crash_size) ||
>             memblock_reserve(crashk_res.start, crash_size)) {
> --
> 2.7.5
>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
