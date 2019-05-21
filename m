Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FED524B15
	for <lists+kexec@lfdr.de>; Tue, 21 May 2019 11:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTMJSOEE4AHHLtGwUg8BcNMzoGCwKDhrepIS0X3xfQ4=; b=m4fuWsxs6hwX4k
	h+XWy+w2Q2n9a4IVaJleMGqG8qNqc7X00IvZ3hHb0HgVriQ0CQcq3gvdJ0kBbHfBPGXCg98Hnt+TC
	MtZd5664YgiiXwO8uf+dqMIR/llEtLtnr69arSUTQPcM3rcYscxHboDqrhYWQAG2IVTSS1Qqwxw+4
	z8oaWUrcrGagE89cppvntlUzE4e9GEZtcyrFBA8aqqOJNzJ7Sq9qIrmfo/q2QqC9h9E//yhh4Vd4q
	FF1NCReGodd+la67gsHkZ6ZDpWN9aeKdoowSAVidCvX2LTOGzRht03dZs42+PEaYOhicK7Nz8m17f
	2IUQyARLuwFB13Kfunkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0fz-0007zS-O7; Tue, 21 May 2019 09:03:15 +0000
Received: from mail-it1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0fv-0007ym-Qy
 for kexec@lists.infradead.org; Tue, 21 May 2019 09:03:13 +0000
Received: by mail-it1-f193.google.com with SMTP id 9so3495881itf.4
 for <kexec@lists.infradead.org>; Tue, 21 May 2019 02:03:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/+o3MggDFa5h86+zTYSOS2v1g0Pwh3ExeN5LLHg8kpM=;
 b=Z6yjJ6t2xyPEGV6QsO7EJYWUcBAnTwDvrsbBZmuG6+sLIzJtdu7tQY0ed7HAWtbEu5
 eUXT5Edf6uMVfzoMcJiUVfS0vvUALCe9R0hrlZVth5t3nYAA6x5BFjVFFIWyEV6eErDB
 5y8kMK79OVg1skyJwzmJCSIR04sV64CR6qZf3mTbXOy8Labhnvk2rHU3K0Iu3V1pgE6A
 p0vAoRUx/iG9McxzcAE9btAuTDQ6L/qrvsbM56HF3T0Zl0nSEJri0irLzH7Qj0A7OVjs
 zvLTlL3FsuxDZUfEQGtVhe6E2rT0q60gsBVHiGCZ+/WiDAPGEWoo2h+/HPE6aQUUxBbF
 +6VQ==
X-Gm-Message-State: APjAAAUrXWdqZOGWKSKpMI9+UmkbEQX0luZS5KwJzVzTib9XM44RAtNK
 UQs1x3JbWavj7YixSj1CoZqbuuxYXQdmR2/sYNtupkTr900=
X-Google-Smtp-Source: APXvYqx6/3duGjSKVU51wlNci+m1IvtUM+dSUVqcFGB7rGWF5JLBFlHDnLLy8ordPh0Anh/n4sL9BxhUc4JSTx6a+bM=
X-Received: by 2002:a24:2e8c:: with SMTP id i134mr2897433ita.9.1558429390460; 
 Tue, 21 May 2019 02:03:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190424092944.30481-2-bhe@redhat.com>
 <20190429002318.GA25400@MiWiFi-R3L-srv>
 <20190429135536.GC2324@zn.tnic> <20190513014248.GA16774@MiWiFi-R3L-srv>
 <20190513070725.GA20105@zn.tnic> <20190513073254.GB16774@MiWiFi-R3L-srv>
 <20190513075006.GB20105@zn.tnic> <20190513080210.GC16774@MiWiFi-R3L-srv>
 <20190515051717.GA13703@jeru.linux.bs1.fc.nec.co.jp>
 <20190515065843.GA24212@zn.tnic>
 <20190515070942.GA17154@jeru.linux.bs1.fc.nec.co.jp>
In-Reply-To: <20190515070942.GA17154@jeru.linux.bs1.fc.nec.co.jp>
From: Kairui Song <kasong@redhat.com>
Date: Tue, 21 May 2019 17:02:59 +0800
Message-ID: <CACPcB9cyiPc8JYmt1QhYNipSsJ5z3wTOJ90LS5LTx4YqwaG8rA@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
To: Junichi Nomura <j-nomura@ce.jp.nec.com>, Borislav Petkov <bp@alien8.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_020311_870460_EF239A77 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
Cc: "x86@kernel.org" <x86@kernel.org>, Baoquan He <bhe@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "fanc.fnst@cn.fujitsu.com" <fanc.fnst@cn.fujitsu.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hpa@zytor.com" <hpa@zytor.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "dyoung@redhat.com" <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 3:10 PM Junichi Nomura <j-nomura@ce.jp.nec.com> wrote:
>
> On 5/15/19 3:58 PM, Borislav Petkov wrote:
> > On Wed, May 15, 2019 at 05:17:19AM +0000, Junichi Nomura wrote:
> >> Hi Kairui,
> >>
> >> On 5/13/19 5:02 PM, Baoquan He wrote:
> >>> On 05/13/19 at 09:50am, Borislav Petkov wrote:
> >>>> On Mon, May 13, 2019 at 03:32:54PM +0800, Baoquan He wrote:
> >>>> So we're going to try it again this cycle and if there's no fallout, it
> >>>> will go upstream. If not, it will have to be fixed. The usual thing.
> >>>>
> >>>> And I don't care if Kairui's patch fixes this one problem - judging by
> >>>> the fragility of this whole thing, it should be hammered on one more
> >>>> cycle on as many boxes as possible to make sure there's no other SNAFUs.
> >>>>
> >>>> So go test it on more machines instead. I've pushed it here:
> >>>>
> >>>> https://git.kernel.org/pub/scm/linux/kernel/git/bp/bp.git/log/?h=next-merge-window
> >>>
> >>> Pingfan has got a machine to reproduce the kexec breakage issue, and
> >>> applying these two patches fix it. He planned to paste the test result.
> >>> I will ask him to try this branch if he has time, or I can get his
> >>> machine to test.
> >>>
> >>> Junichi, also have a try on Boris's branch in NEC's test environment?
> >>
> >> while the patch set works on most of the machines I'm testing around,
> >> I found kexec(1) fails to load kernel on a few machines if this patch
> >> is applied.  Those machines don't have IORES_DESC_ACPI_TABLES region
> >> and have ACPI tables in IORES_DESC_ACPI_NV_STORAGE region instead.
> >
> > Why? What kind of machines are those?
>
> I don't know.  They are just general purpose Xeon-based servers
> and not some special purpose machines.  So I guess there are other
> such machines in the wild.
>

Hi, I think it's reasonable to update the patch to include the
NV_STORAGE regions as well, most likely the firmware only provided
NV_STORAGE region? Can you help confirm if the e820 didn't contain
ACPI data, and only ACPI NVS?

I had a try with this update patch, it worked and didn't break anything.

Hi Boris, would you prefer to just fold Junichi update patch into the
previous one or I should send an updated patch?


--
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
