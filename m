Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 490F88F55C
	for <lists+kexec@lfdr.de>; Thu, 15 Aug 2019 22:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V25oZmX4k9GmquzOs3uQgDeRGUCA+9/kFbFij5ybvjM=; b=X2v9vahg3FsLs8
	wGYmYCZV3NE/Vrx0v2h4brVnGyax5tiybOyyRY93f7zbllY/lrjgAkTnhbt2RnbMFdF5VeoenyK6x
	/i3HVMC1XJ6ZGnHXYOtH0hgsXgz5HCMv6ZMjZLrGIrilm6qtipGI17sdYOtZ241kynW9/u03GRNe7
	S4eK+rmy20C/zWhqJXxYqE+Uy1oh0UU3QokS1N7MG9VCItRVa6H/JbLqv1d+h5R2cGCO22IGjb5ZC
	urxH16Ob6kEgnBi64DJmivXWRlP87sBqlzQH8YZlQUfmXsD+gWWFZrlAVsWHNU96KlQcdXjGayHn/
	ErGBoMtZxIt026nLAnyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyM44-0003io-Jq; Thu, 15 Aug 2019 20:09:41 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyM3y-0003he-HQ
 for kexec@lists.infradead.org; Thu, 15 Aug 2019 20:09:37 +0000
Received: by mail-ed1-x543.google.com with SMTP id f22so3217975edt.4
 for <kexec@lists.infradead.org>; Thu, 15 Aug 2019 13:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4D//Pp/TZqR7m0Xv97rNg3iy0ay2HnnYAQiblL0c7eU=;
 b=CmT7V080W3Smj4f6SSsvHmEOQWnF4GETFSFq3IvUcnNcGNWvErFFsL2uEeiBfLM+46
 jMK+ENv9Dld8scKBu4CBOOhHkFs4f+CIhLozKz3Y3D11vmiE3n//aBlKGIlbCK91KQTh
 gjV1KlfcBPczUeWVPgWaRk1vGwxYBAtxZ8FrV/52/JaCaiYO7itpDazKUX+ZuYeSU2m4
 JlBDqdyLOv+JUBdkKvlC7MafQrI1C6df41qg2e4sW4uCtyWnfwIOypFjTUliBIKi0/Rf
 6OvlD768SyMmUmF+2G1hK7isEztqriN4UQPac+EOpFWqYgQgf629jrGxcE2/atBGcis7
 g9nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4D//Pp/TZqR7m0Xv97rNg3iy0ay2HnnYAQiblL0c7eU=;
 b=aZtG2wlmo4Ur03Yr6f3eyLtJD7lf10tfzOKabwdhB7TiV4bXJyWVGvN+W8vhB//euT
 DK0x0N0IbvIk/2nIlVutH/mGzjkuvCZnRnD3vLK3W0/pORCk77ER0E6kNpDRWANMdt4f
 xqN8981fHR7MxcZv6kWrSwt/mmqGZaTiASjWi1up/lrmwahnUAS4St55Ab9lPmQXQcYn
 k3rnx35vK21VSCj8Wly+tk5tEo3oRjGeZwx8J+2kP6Eyn8Woc/46eQeAtQBexevzenvV
 29OiChPBu4fpTk6drIGdPbWRN4INsaxZjf7+21V3D4VLEIobqyIS1XfBfw9TlWEmUUe+
 asiw==
X-Gm-Message-State: APjAAAUV3wWikm8oDb7mGuBpLu8MyyJ0lD/hfGtTNhT+5a6nxa7hi5wW
 UftkRHioxnSNDIxTWG0Kau68HiIwAiLhuy6et4XUeg==
X-Google-Smtp-Source: APXvYqzGHLppwWke0pO2++IwiTEdck9wvz9/d4REyeumkNmedLE2t/EbxCRGRK40pri6uiNjWD0D5KVt9eyzMCfdXIo=
X-Received: by 2002:a17:906:5409:: with SMTP id
 q9mr6256097ejo.209.1565899770715; 
 Thu, 15 Aug 2019 13:09:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190801152439.11363-1-pasha.tatashin@soleen.com>
 <CA+CK2bADiBMEx9cJuXT5fQkBYFZAtxUtc7ZzjrNfEjijPZkPtw@mail.gmail.com>
 <ba8a2519-ed95-2518-d0e8-66e8e0c14ff5@arm.com>
In-Reply-To: <ba8a2519-ed95-2518-d0e8-66e8e0c14ff5@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 15 Aug 2019 16:09:19 -0400
Message-ID: <CA+CK2bAqBi43Cchr=md7EPRuEWH-iuToK0PxN3ysSBQ42Hd0-g@mail.gmail.com>
Subject: Re: [PATCH v1 0/8] arm64: MMU enabled kexec relocation
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_130934_722698_F5D604C0 
X-CRM114-Status: GOOD (  20.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi James,

Thank you for your feedback. My replies below:

> > Also, I'd appreciate if anyone could test this series on vhe hardware
> > with vhe kernel, it does not look like QEMU can emulate it yet
>
> This locks up during resume from hibernate on my AMD Seattle, a regular v8.0 machine.

Thanks for reporting a bug I will root cause and fix it.

> Please try and build the series to reduce review time. What you have here is an all-new
> page-table generation API, which you switch hibernate and kexec too. This is effectively a
> new implementation of hibernate and kexec. There are three things here that need review.
>
> You have a regression in your all-new implementation of hibernate. It took six months (and
> lots of review) to get the existing code right, please don't rip it out if there is
> nothing wrong with it.

> Instead, please just move the hibernate copy_page_tables() code, and then wire kexec up.
> You shouldn't need to change anything in the copy_page_tables() code as the linear map is
> the same in both cases.

It is not really an all-new implementation of hibernate (for kexec it
is true though). I used the current implementation of hibernate as
bases, and simply generalized the functions by providing a flexible
interface. So what you are asking is actually exactly what I am doing.
I realize, that I introduced a bug that I will fix.

> It looks like you are creating the page tables just after the kexec:segments have been
> loaded. This will go horribly wrong if anything changes between then and kexec time. (e.g.
> memory you've got mapped gets hot-removed).
> This needs to be done as late as possible, so we don't waste memory, and the world can't
> change around us. Reboot notifiers run before kexec, can't we do the memory-allocation there?

Kexec by design does not allow allocate during kexec time. This is
because we cannot fail during kexec syscall. All allocations must be
done during kexec load time. Kernel memory cannot be hot-removed, as
it is not part of ZONE_MOVABLE, and cannot be migrated.

The current implementation relies on this assumption as well: during
load time the (struct kimage) -> head contains the physical addresses
of sources and destinations. If sources can be moved, this array will
be broken.


> >> Previously:
> >> kernel shutdown 0.022131328s
> >> relocation      0.440510736s
> >> kernel startup  0.294706768s
> >>
> >> Relocation was taking: 58.2% of reboot time
> >>
> >> Now:
> >> kernel shutdown 0.032066576s
> >> relocation      0.022158152s
> >> kernel startup  0.296055880s
> >>
> >> Now: Relocation takes 6.3% of reboot time
> >>
> >> Total reboot is x2.16 times faster.
>
> When I first saw these numbers they were ~'0.29s', which I wrongly assumed was 29 seconds.
> Savings in milliseconds, for _reboot_ is a hard sell. I'm hoping that on the machines that
> take minutes to kexec we'll get numbers that make this change more convincing.

Sure, this userland is very small kernel+userland is only 47M. Here is
another data point: fitImage: 380M, it contains a larger userland.
The numbers for kernel shutdown and startup are the same as this is
the same kernel, but relocation takes: 3.58s

shutdown: 0.02s
relocation: 3.58s
startup:  0.30s

Relocation take 88% of reboot time. And, we must have it under one second.

Thank you,
Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
