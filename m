Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAC74EFF3
	for <lists+kexec@lfdr.de>; Fri, 21 Jun 2019 22:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmheII/O9d6ylXlDG1OfsJ6nF3Y8OE5V0yrplbcQ3YE=; b=N+K1eAR5DJQSOc
	K12JaOrakBEK1T5oBC+yFF7ZHR0C0or9cR5z8Y1x0m3w1thbNx/+lVx1JmZb1XJmTeP41HT0Q+dLu
	+mpY87H7Crbxl2LnGppkfcWjwWO1a3tX6UYe6ZLLt0V4nUWkzM5SlI/wxCkkhF+4Klu4lF7p2LWkh
	A7ZX0BmHgizawNg3rzn7UerjEExAJ5/5HSHgGSZdKC5FCGaSAFnS1c0bPfFxV1LRvpz7eIy6Pg1Xu
	qOwkjOZDP3HlaGygLF4+s997figFYN5YYI3NspuAMiToUfhKNycDbmkUJnftB97SPuMcJj7hSVe/i
	vcEr6f3ECCCdjqVsQb6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hePzH-00057P-EM; Fri, 21 Jun 2019 20:18:19 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hePzE-00056i-GR
 for kexec@lists.infradead.org; Fri, 21 Jun 2019 20:18:17 +0000
Received: by mail-io1-xd44.google.com with SMTP id e3so4200839ioc.12
 for <kexec@lists.infradead.org>; Fri, 21 Jun 2019 13:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E8efNcZtDwk7IidLHvLtP2hUl2fc9Kq5GohdU6xk+B0=;
 b=Xj6Qle4/q+GM5Ky8b2Khzf+oX1HiCniPCrEDrmA+nj/WMc5akAtYIQ6OJAj94ohBnb
 aX/9RTXO5LkDnk+mBUQQ3x5MOXNAP593Aaj9qJC62m3BuAAYVd0BM7x93MxB/eZMb564
 ViDCqclpjT6u2cPNdJPmy22KXsTS0PnyoaQr4/78/7lxat7WAmkNrYzoalaarcBaxu4F
 NSSswrNR2IN5nwO5k82C1Yn/EoGPNInSbjbOYm6PbKtTaMEFc7ghnTss+GAsTc0VT3co
 iuuiNOnnE44+qY9sKAADPI3IEyStp11UrDg0PBvvcQhHnmGq9z6GO7nxez9WzxkFMPbs
 k7LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E8efNcZtDwk7IidLHvLtP2hUl2fc9Kq5GohdU6xk+B0=;
 b=UMRiEPxx+99w0Izqei/RxAOdAZHX4YCrSQqV1AzaJ21MoquEm63UMmlHQgGyPFVAbN
 asu+NYE79izlNSc0ZQfA/XpbIaJ5xP/7MUz4MteIhxx4MLJQaYGFCB+/vBmSm0lC/Msz
 GUR8AGWq3z7F9q3q9YqtkZnEKNsiEI0aNfyk/pSaKamD03FFW8RHMDy6VECy17vEAn7b
 xVeY9SUxCfR1X8RvUghy3u9qSuGf63nycXo6FD0+bqE9A095YK0xM/hcIplbavxTkUR4
 9U5SHIr/86ej7UJQUkLps4j+3seNj9IPIGUD+MBHQQbq/HaA1Fc3LBbfCgaB0fDYaMp2
 R6tA==
X-Gm-Message-State: APjAAAVaRsN1rKaAkIJeUpLRCBsoEmRFE3woaQQxw0drpbpNddCzM+Fz
 PMhbRdE9ATIYGEYE3gt3/10S1mJ6ppHMcmUaYPYOIg==
X-Google-Smtp-Source: APXvYqy23qbovsSsoFJ0RjtLQmZBZKdQgbpWtLEgyUTQHuLRdPlhf28KgpZ4L8+7/6SG64J+AK2cPMuORXLcoLNPoN4=
X-Received: by 2002:a05:6638:3d3:: with SMTP id
 r19mr12698566jaq.53.1561148294551; 
 Fri, 21 Jun 2019 13:18:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190326182742.16950-1-matthewgarrett@google.com>
 <20190326182742.16950-8-matthewgarrett@google.com>
 <20190621064340.GB4528@localhost.localdomain>
In-Reply-To: <20190621064340.GB4528@localhost.localdomain>
From: Matthew Garrett <mjg59@google.com>
Date: Fri, 21 Jun 2019 13:18:03 -0700
Message-ID: <CACdnJut=J1YTpM4s6g5XWCEs+=X0Jvf8otfMg+w=_oqSZmf01Q@mail.gmail.com>
Subject: Re: [PATCH V31 07/25] kexec_file: Restrict at runtime if the kernel
 is locked down
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_131816_581311_7D47867D 
X-CRM114-Status: GOOD (  20.10  )
X-Spam-Score: -15.2 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Jiri Bohac <jbohac@suse.cz>, Linux API <linux-api@vger.kernel.org>,
 kexec@lists.infradead.org, James Morris <jmorris@namei.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 LSM List <linux-security-module@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 11:43 PM Dave Young <dyoung@redhat.com> wrote:
>
> On 03/26/19 at 11:27am, Matthew Garrett wrote:
> > From: Jiri Bohac <jbohac@suse.cz>
> >
> > When KEXEC_SIG is not enabled, kernel should not load images through
> > kexec_file systemcall if the kernel is locked down.
> >
> > [Modified by David Howells to fit with modifications to the previous patch
> >  and to return -EPERM if the kernel is locked down for consistency with
> >  other lockdowns. Modified by Matthew Garrett to remove the IMA
> >  integration, which will be replaced by integrating with the IMA
> >  architecture policy patches.]
> >
> > Signed-off-by: Jiri Bohac <jbohac@suse.cz>
> > Signed-off-by: David Howells <dhowells@redhat.com>
> > Signed-off-by: Matthew Garrett <mjg59@google.com>
> > Reviewed-by: Jiri Bohac <jbohac@suse.cz>
> > cc: kexec@lists.infradead.org
> > ---
> >  kernel/kexec_file.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
> > index 67f3a866eabe..a1cc37c8b43b 100644
> > --- a/kernel/kexec_file.c
> > +++ b/kernel/kexec_file.c
> > @@ -239,6 +239,12 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
> >               }
> >
> >               ret = 0;
> > +
> > +             if (kernel_is_locked_down(reason, LOCKDOWN_INTEGRITY)) {
> > +                     ret = -EPERM;
> > +                     goto out;
> > +             }
> > +
>
> Checking here is late, it would be good to move the check to earlier
> code around below code:
>         /* We only trust the superuser with rebooting the system. */
>         if (!capable(CAP_SYS_BOOT) || kexec_load_disabled)
>                 return -EPERM;

I don't think so - we want it to be possible to load images if they
have a valid signature.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
