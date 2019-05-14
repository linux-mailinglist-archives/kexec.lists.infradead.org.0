Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6661B1CA0E
	for <lists+kexec@lfdr.de>; Tue, 14 May 2019 16:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fSWX6m+vpkLf3dfzM4f8sw2NAGYDHt/gcyP/Tbfmvd0=; b=oj6H+XVUEKTibV
	joYarVH/aZYOaUrDJEkQ8aTP7kpGj/CIxWZg0FrgUFkTIA09U1nt0W0LTSxpADyLKQiumojIOW5DD
	37bvRyCQjbOyVD2nPBFKRpztjUR4bf+ljSs9BvOIKkvfsq5PUeoI47zVoA+yUqVit2J6vhq6uEb+q
	Zns+h0R8rO9FG8gFHMsEtzmOsdj7KIWC3ZB1+g1tioaeJq1tX5AmGIEPWdgW9T+oOdR6mlXB30FxJ
	MRuefydN3ZmajPkNn7624lN7ycXr7JOptpQM9OfT1pDNNjWYisYAR2vr+0fA154Pz1bGvAFAFCbbt
	omlU2o+5ckONkQOOl07Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQY7Q-0006Jj-9F; Tue, 14 May 2019 14:09:24 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQY7N-0006JK-Pu
 for kexec@lists.infradead.org; Tue, 14 May 2019 14:09:23 +0000
Received: by mail-wr1-x441.google.com with SMTP id w12so19419037wrp.2
 for <kexec@lists.infradead.org>; Tue, 14 May 2019 07:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NXD/cBlZtm4F6T0USEyOTof/8ULd1e59bS2+Zc/i//M=;
 b=j7XvgZ1MBiwUbby/RgTbwI4G6OYSavWSoDyW36gZkcPUTvA/uxze+gJOGwnnRANapP
 hXJa9sgTaA0ksfb1QGtuoUM8T09iYK4XonJ6nh6eLbA5PapFgZOmV53B9jHj3UUwZ4AM
 V9YtFT383FPZmH6V8Bp743uk90bKYNeuHAh6jb5ODHhpA7OOyIv2aB2G6MOPQD7uA6cb
 AZr7Y1z6dIK+a4sDLOJcMi8NFstBq56S8aevFCsMtA75eoVjIxJG4SN+gHzBCyAUVVck
 oot7ereDKHv+X0vD63Qbv8A8sJELvbkgSufmqieV4Wx0FIXlQdNoZ/NMiu+7ve7WN+wj
 jFqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=NXD/cBlZtm4F6T0USEyOTof/8ULd1e59bS2+Zc/i//M=;
 b=q6UFepLAFclvOPKA13jolN5z+bpVqCjd8emxFNVx6u/zQYOVu+BJvKKheuC2eBW3I2
 Whe4iDdfMyr1cidMlmtDN3byuwTVzdjjB90/TWIT6+/zs7T57J3SKbDIATV+TaUNCdYk
 JOUMPI45qMEWwf7Y8w+XHmD54gPUbgJeVboPOXjKVwM+59Dpuh6r0F3e01z2HX58U1pw
 isep3jH+xu0Y7FXgKGyWn8JnVSFRbhO8oNcjMerD+O0G5t7wbmE6kzLnehOFYp2Gdi4j
 S/6fgnkaj5xSgN8YycquxBVM9WdCGNDxBWWqOml0C1FL7MYKLJ2XX0jucUS+HMb9hVzh
 Xeyg==
X-Gm-Message-State: APjAAAWjEiMuDspSMRQfwI11GmjoyEj/Q74CeG1P2J7pDQpkyoTkoPsR
 uLQL7Yja3a4tyjDYzIShqXA=
X-Google-Smtp-Source: APXvYqwFMlk0bgh8bQLjL8tM7gJ767gnOGmmfMGPs6nQ93NdWQFpENrzv/CBnmMfF1MC7e6pRRx+7w==
X-Received: by 2002:a5d:4945:: with SMTP id r5mr20913809wrs.328.1557842960054; 
 Tue, 14 May 2019 07:09:20 -0700 (PDT)
Received: from gmail.com (2E8B0CD5.catv.pool.telekom.hu. [46.139.12.213])
 by smtp.gmail.com with ESMTPSA id n1sm2833483wmc.19.2019.05.14.07.09.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 07:09:18 -0700 (PDT)
Date: Tue, 14 May 2019 16:09:16 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Dave Young <dyoung@redhat.com>
Subject: Re: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
Message-ID: <20190514140916.GA90245@gmail.com>
References: <20190429135536.GC2324@zn.tnic>
 <20190513014248.GA16774@MiWiFi-R3L-srv>
 <20190513070725.GA20105@zn.tnic>
 <20190513073254.GB16774@MiWiFi-R3L-srv>
 <20190513075006.GB20105@zn.tnic>
 <20190513080653.GD16774@MiWiFi-R3L-srv>
 <20190514032208.GA25875@dhcp-128-65.nay.redhat.com>
 <20190514084841.GA27876@dhcp-128-65.nay.redhat.com>
 <20190514113826.GM2589@hirez.programming.kicks-ass.net>
 <20190514125835.GA29045@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514125835.GA29045@dhcp-128-65.nay.redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_070921_843023_DE1012D8 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 2.6 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mingo.kernel.org[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: x86@kernel.org, kasong@redhat.com, Baoquan He <bhe@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, fanc.fnst@cn.fujitsu.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, hpa@zytor.com, j-nomura@ce.jp.nec.com,
 tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


* Dave Young <dyoung@redhat.com> wrote:

> On 05/14/19 at 01:38pm, Peter Zijlstra wrote:
> > On Tue, May 14, 2019 at 04:48:41PM +0800, Dave Young wrote:
> > 
> > > > I did some tests on the laptop,  thing is:
> > > > 1. apply the 3 patches (two you posted + Boris's revert commit 52b922c3d49c)
> > > >    on latest Linus master branch, everything works fine.
> > > > 
> > > > 2. build and test the tip/next-merge-window branch, kernel hangs early
> > > > without output, (both 1st boot and kexec boot)
> > > 
> > > Update about 2.  It should be not early rsdp related, I got the boot log
> > > Since can not reproduce with Linus master branch it may have been fixed.
> > 
> > Nothing was changed here since PTI.
> > 
> > > [    0.685374][    T1] rcu: Hierarchical SRCU implementation.
> > > [    0.686414][    T1] general protection fault: 0000 [#1] SMP PTI
> > > [    0.687328][    T1] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.1.0-rc6+ #877
> > > [    0.687328][    T1] Hardware name: LENOVO 4236NUC/4236NUC, BIOS 83ET82WW (1.52 ) 06/04/2018
> > > [    0.687328][    T1] RIP: 0010:reserve_ds_buffers+0x34e/0x450
> > 
> > > [    0.687328][    T1] Call Trace:
> > > [    0.687328][    T1]  ? hardlockup_detector_event_create+0x50/0x50
> > > [    0.687328][    T1]  x86_reserve_hardware+0x173/0x180
> > > [    0.687328][    T1]  x86_pmu_event_init+0x39/0x220
> > 
> > The DS buffers are special in that they're part of cpu_entrt_area. If
> > this comes apart it might mean your pagetables are dodgy.
> 
> Hmm, it seems caused by some WIP branch patches, I suspect below:
> commit 124d6af5a5f559e516ed2c6ea857e889ed293b43
> x86/paravirt: Standardize 'insn_buff' variable names

This commit had a bug which I fixed - could you try the latest -tip?

Thanks,

	Ingo

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
