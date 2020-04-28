Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6701BB8D1
	for <lists+kexec@lfdr.de>; Tue, 28 Apr 2020 10:26:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/LC+/KLe2zNi/aV8z1f4vJCy6cWo6UNmGVrnSkpqR8=; b=GFOl/LzmCjX3SG
	Yqy815wz/xzRmWnXpmfNhJfHsqGAbOfdoABNSNhEMnb/3H4zNpgWxj9yyXdgsPYfvORhKSsIqHK53
	wtvBoU2qnDoSdcPWhKYMBWesF412jWv1FLfONCRmugmpqMPIp5voJBrd1W+rUbSBWPAVacvwv47yK
	PhwRLU6IvTxwAJfw58puxZ8pJz37s3IKhwedrmAcjtnAkmqLeV+rUxQ8XxSThp+8wfTfmBRDCRTBH
	hGTjLlCXzr9Mppf+vK/fN0+AEwgK0weFBZlL02YOa986NUEAbqrSL/XfSL/SrYZFdz0fpuVPEleyO
	ju+JLd+wlhNI78LE1zjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTLZV-0001pC-A9; Tue, 28 Apr 2020 08:26:29 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTLZH-0001gD-08
 for kexec@lists.infradead.org; Tue, 28 Apr 2020 08:26:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588062372;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KYM3desSy4+3vvJoIkeu1VRmDlWT3sMoPU/ckvdT2MA=;
 b=HPINIAvalBfXr7XJJq+mVCs3H8tSf+HDRzBSV/qIbu75zjDztdo3RK13BrLEOuztJktFnM
 3XAXe2putC4sDzxpZl94BUJc5geN9qBVAWSRVjk9j/fHpZg1xfFC/OE4QJdd2N47DqzG5A
 Ym1EFTnpQ+2H7aGkBkSiF0nI25Xej78=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-64-Zsw2nzBxNkWh8yuMiz9kkA-1; Tue, 28 Apr 2020 04:26:10 -0400
X-MC-Unique: Zsw2nzBxNkWh8yuMiz9kkA-1
Received: by mail-qt1-f199.google.com with SMTP id q43so23684774qtj.11
 for <kexec@lists.infradead.org>; Tue, 28 Apr 2020 01:26:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tXhjtw31C7APcAUgwp8UR3Mym+ieIjYBvCNB1l3z3Cw=;
 b=XapnVHgtu4i5xXjqeZTGFu71awFbTXPKynXmnoeNb7WK3ujLvDamS4Rq1JBa+HX/mQ
 CtNiRLm+yrMo/I75ykOxRuzE+FPy3GDKM9/KteMqvgVQBP64/jrJ1iK413olUlIWkG8I
 J2EITUvGDoMzGYv51QzUcNVK/GaA4WHSKxohrTposx7ttBt36z+m7RZLgm7S0L7LHP5R
 GsstAKA4E/xXX/4q7SRAniti1iRoBcIYBGFtPzm61YzcX7B63YJ3WQd7ZJbkKZcIuITj
 bO5H1t5Tcgnr+HUMIYnN5NcDtJ9HaxxSKow96DG95oDlAPHPGNVZ/3XeHycEWocYLszI
 /2xw==
X-Gm-Message-State: AGi0PuYfqDRbG3tbogEqBlfJg9RoyTPibpynLLcTg1hW1XR0Yz7XPswJ
 XZvOHliD+uaWyY6Q9ryp7xzXeMJTFJlDmokRUjoQhlGJXLqgQvlU7PeiDuUehADDATk31dIsx49
 GZlb7p41iqEo/+LeazsUNvYZvTyD1I/DrMJGq
X-Received: by 2002:a37:78c1:: with SMTP id
 t184mr25884600qkc.213.1588062370223; 
 Tue, 28 Apr 2020 01:26:10 -0700 (PDT)
X-Google-Smtp-Source: APiQypI1XGLoDm6yLIwLjZJWCobd+jQJcmjRlEis5ZXXQvxLZO+xahXphucbaOKZJdvtv+zGqxdCdUoV4b3afKXJEgs=
X-Received: by 2002:a37:78c1:: with SMTP id
 t184mr25884581qkc.213.1588062369938; 
 Tue, 28 Apr 2020 01:26:09 -0700 (PDT)
MIME-Version: 1.0
References: <1586212300-30797-1-git-send-email-bhsharma@redhat.com>
 <20200408104655.GA92698@C02TD0UTHF1T.local>
In-Reply-To: <20200408104655.GA92698@C02TD0UTHF1T.local>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Tue, 28 Apr 2020 13:55:58 +0530
Message-ID: <CACi5LpP0WqYGxrJL6BJia-ceSR5XbjytsSY+P74xaDJZTJA8jA@mail.gmail.com>
Subject: Re: [PATCH] arm64/defconfig: Enable CONFIG_KEXEC_FILE
To: Mark Rutland <mark.rutland@arm.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_012615_127473_613ECE81 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>,
 James Morse <james.morse@arm.com>, Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Apr 8, 2020 at 4:17 PM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Tue, Apr 07, 2020 at 04:01:40AM +0530, Bhupesh Sharma wrote:
> > kexec_file_load() syscall interface is now supported for
> > arm64 architecture as well via commits:
> > 3751e728cef2 ("arm64: kexec_file: add crash dump support") and
> > 3ddd9992a590 ("arm64: enable KEXEC_FILE config")].
> >
> > This patch enables config KEXEC_FILE by default in the
> > arm64 defconfig, so that user-space tools like kexec-tools
> > can use the same as the default interface for kexec/kdump
> > on arm64.
> >
> > Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: James Morse <james.morse@arm.com>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: kexec@lists.infradead.org
> >
> > Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
>
> FWIW:
>
> Acked-by: Mark Rutland <mark.rutland@arm.com>
>
> Mark.
>
> > ---
> >  arch/arm64/configs/defconfig | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index 24e534d85045..fa122f4341a2 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -66,6 +66,7 @@ CONFIG_SCHED_SMT=y
> >  CONFIG_NUMA=y
> >  CONFIG_SECCOMP=y
> >  CONFIG_KEXEC=y
> > +CONFIG_KEXEC_FILE=y
> >  CONFIG_CRASH_DUMP=y
> >  CONFIG_XEN=y
> >  CONFIG_COMPAT=y
> > --
> > 2.7.4
> >

Thanks a lot  Mark.

Hi Catalin, Will,

Can you please help pick this patch in the arm tree. We have an
increasing number of user-cases from distro users
who want to use kexec_file_load() as the default interface for
kexec/kdump on arm64.

Regards,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
