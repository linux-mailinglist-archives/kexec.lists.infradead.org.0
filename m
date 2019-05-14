Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFE51C7E2
	for <lists+kexec@lfdr.de>; Tue, 14 May 2019 13:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w+mFWfUfMxzDqXFBy6t8+M1ilAa/bEwO+fhwDdHj8IY=; b=iW6802OyE2HNv0
	FZOg7aMNhWQ4cdDer33RsZVDUydaWRmHxs83BCO/TSG5fx2lpEu26PuufXGdL8ZlEbzkq12xeUSa7
	Jrf7PpN290cSvZU7QBfV04b7Q2I6qqNmqaVp+xJdyc8uYglG28SKVcN/+vcEchDIlL4NkYxxwW9Vx
	ciJwFRiESmlZS5vacKYimgnELk2FNu1JARQmZni8OVngneQqTmffyemgKaEZTSUcae1xZKyS28wFt
	QM2ZcVrSQ2TrvAiBH4OL5P06D8Jq4S3iarEwNkuNtJCFBEO00TvpQjZtKNDlLEqFIf6JvyGo4CvSi
	trchTbf9fmn4z75GKf6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQVlO-0000NS-1W; Tue, 14 May 2019 11:38:30 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQVlL-0000NI-U4; Tue, 14 May 2019 11:38:28 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 6D1DA2029F877; Tue, 14 May 2019 13:38:26 +0200 (CEST)
Date: Tue, 14 May 2019 13:38:26 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Dave Young <dyoung@redhat.com>
Subject: Re: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
Message-ID: <20190514113826.GM2589@hirez.programming.kicks-ass.net>
References: <20190424092944.30481-2-bhe@redhat.com>
 <20190429002318.GA25400@MiWiFi-R3L-srv>
 <20190429135536.GC2324@zn.tnic>
 <20190513014248.GA16774@MiWiFi-R3L-srv>
 <20190513070725.GA20105@zn.tnic>
 <20190513073254.GB16774@MiWiFi-R3L-srv>
 <20190513075006.GB20105@zn.tnic>
 <20190513080653.GD16774@MiWiFi-R3L-srv>
 <20190514032208.GA25875@dhcp-128-65.nay.redhat.com>
 <20190514084841.GA27876@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514084841.GA27876@dhcp-128-65.nay.redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: fanc.fnst@cn.fujitsu.com, kasong@redhat.com, Baoquan He <bhe@redhat.com>,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, hpa@zytor.com, j-nomura@ce.jp.nec.com,
 tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 04:48:41PM +0800, Dave Young wrote:

> > I did some tests on the laptop,  thing is:
> > 1. apply the 3 patches (two you posted + Boris's revert commit 52b922c3d49c)
> >    on latest Linus master branch, everything works fine.
> > 
> > 2. build and test the tip/next-merge-window branch, kernel hangs early
> > without output, (both 1st boot and kexec boot)
> 
> Update about 2.  It should be not early rsdp related, I got the boot log
> Since can not reproduce with Linus master branch it may have been fixed.

Nothing was changed here since PTI.

> [    0.685374][    T1] rcu: Hierarchical SRCU implementation.
> [    0.686414][    T1] general protection fault: 0000 [#1] SMP PTI
> [    0.687328][    T1] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.1.0-rc6+ #877
> [    0.687328][    T1] Hardware name: LENOVO 4236NUC/4236NUC, BIOS 83ET82WW (1.52 ) 06/04/2018
> [    0.687328][    T1] RIP: 0010:reserve_ds_buffers+0x34e/0x450

> [    0.687328][    T1] Call Trace:
> [    0.687328][    T1]  ? hardlockup_detector_event_create+0x50/0x50
> [    0.687328][    T1]  x86_reserve_hardware+0x173/0x180
> [    0.687328][    T1]  x86_pmu_event_init+0x39/0x220

The DS buffers are special in that they're part of cpu_entrt_area. If
this comes apart it might mean your pagetables are dodgy.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
