Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 487B814346A
	for <lists+kexec@lfdr.de>; Tue, 21 Jan 2020 00:18:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZFWOvAUivKLGdwuTqapp8w8NG0mdlddiWhrsSBReS4=; b=Z7IQHM5gAjcgrt
	KBeZxTkDS5SB3ON/xa/G6LfYEd/W12Pv3DNvwcU6i8sJQmlseT1MSfNQwYqJQ3HYaZEvsbbMlcAER
	wMQbF96hkVXcX0WpHV+MJ96ufVdko3ZRbRCtoSMHWsmoYL3UDJNUj0hVirgMoByMwSeHTC/O8N82q
	CRpElMZvQD6P4H/OrktY+s5pK1kyzVY0gsvPR/M+TeN/8NjGDuU1tb+k7HqmanGUYAxEq9/AXKQkH
	f1GI7OSBocXgYJUI2EzGHhLYdzdCsCeSs9D77IkIESyuQY3cW7YLIRlYO1rK/sR9gldMIGsXulcPc
	Qy5S5OY6mFehyLYbcxlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itgJJ-0006Vr-Hu; Mon, 20 Jan 2020 23:18:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itgJG-0006VX-3l
 for kexec@lists.infradead.org; Mon, 20 Jan 2020 23:18:19 +0000
Received: by mail-wm1-x344.google.com with SMTP id 20so1081843wmj.4
 for <kexec@lists.infradead.org>; Mon, 20 Jan 2020 15:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2YTMxBWhx7Otjnn8r5v7NzSq3gAYo+K8MrbMb1Wf8a4=;
 b=keGeVmaua312ZZ03Dym3shj0xcDQDYg1grRvVYsLFkBUQnZoKznSlOHun4+yttx20L
 GbVr1dyzmkAwZtYz+m+nd/iHpOJI3N8A5NwkH+vEp8G596bOXYpFT7MuvtjRGO8SzA/j
 HkHp7J5m6g4UwYhXJtNpVHkbrgJQLFRj8guJwWnfiMsWENdaV/Lr3wXSZOqv47pnF2qI
 DDGRm1TSOaWBcxqLctUihEL6nWsdJpWtuI2jOGFjsl8RgLpImWAKpZb2+eZYUw+Vjg9R
 4wo/TPf6zJ9/CWB7e8mybA07FOMWLuKI9BwZJQILnEAiFjnrwzZEEecV+v5/7fBWrrT2
 ieGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2YTMxBWhx7Otjnn8r5v7NzSq3gAYo+K8MrbMb1Wf8a4=;
 b=l/QlSZ1aSrYBPe5BGT2BBRhul2ZdG1Ks3mvOzJxvaHIFXAsfgQFSk8RC9YA0IkbU1i
 avqcfA0m5NS+zN/7Lbupr16HmJUMgo1ZufQIEtrBwc2rX2dd4mRGaENsY0AvQtLjUUnr
 eLUC6n0b8wtY/4p4/KHJSxnzd65lWSUT30k4sJxu6VP6XjB83icwI85YGuK2VpSgDMCo
 K0QASv1YgOhYh7OPahWAT0fCflQ8GU7Tb0v1/oTKGhEj12LP4u6Bg5Xsm1B2AvClR+mK
 gCTySE9JA1IYSTNigtTTd6L6MpMDW4RjaRkAhnpW7liJy7v42H3BFRhBfMhsz/9pQHJh
 w26A==
X-Gm-Message-State: APjAAAXUGNTIvY46go3d7gv2kMRYuH0LvDGKuTicJD8IYfo7CBPhyEt3
 MKTgcW7xyhgCoh4YAmuYoh7tEt1bh6FHNVZi2M617Q==
X-Google-Smtp-Source: APXvYqzQrpODphjkUzqVsGGqQnlP1a+JBKNbyESdvhjtt+/rfoCTjgBik4/Y5ODqVprjwiZ2S3sV1E4QPqOrz8SNne8=
X-Received: by 2002:a7b:cfc9:: with SMTP id f9mr1069517wmm.1.1579562295660;
 Mon, 20 Jan 2020 15:18:15 -0800 (PST)
MIME-Version: 1.0
References: <20161202195416.58953-1-andriy.shevchenko@linux.intel.com>
 <20161202195416.58953-3-andriy.shevchenko@linux.intel.com>
 <20161215122856.7d24b7a8@endymion>
 <20161216023213.GA4505@dhcp-128-65.nay.redhat.com>
 <1481890738.9552.70.camel@linux.intel.com> <20161216143330.69e9c8ee@endymion>
 <20161217105721.GB6922@dhcp-128-65.nay.redhat.com>
 <20200120121927.GJ32742@smile.fi.intel.com>
 <87a76i9ksr.fsf@x220.int.ebiederm.org>
 <CAHp75VdjwWfqHtJ3n-UK_n5nzpgcpERbM+_9-Z3FrjJx7nHQzQ@mail.gmail.com>
In-Reply-To: <CAHp75VdjwWfqHtJ3n-UK_n5nzpgcpERbM+_9-Z3FrjJx7nHQzQ@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 21 Jan 2020 00:18:03 +0100
Message-ID: <CAKv+Gu-sVSWNYHEjzjOfbEryOR_XruwH=qQphq4uTXMLPK18tw@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] firmware: dmi_scan: Pass dmi_entry_point to
 kexec'ed kernel
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_151818_190380_EA0DAEF2 
X-CRM114-Status: GOOD (  34.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Matt Fleming <matt@codeblueprint.co.uk>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Dave Young <dyoung@redhat.com>, Jean Delvare <jdelvare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, 20 Jan 2020 at 23:31, Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
>
> On Mon, Jan 20, 2020 at 9:28 PM Eric W. Biederman <ebiederm@xmission.com> wrote:
> > Andy Shevchenko <andriy.shevchenko@linux.intel.com> writes:
> > > On Sat, Dec 17, 2016 at 06:57:21PM +0800, Dave Young wrote:
> > >> Ccing efi people.
> > >>
> > >> On 12/16/16 at 02:33pm, Jean Delvare wrote:
> > >> > On Fri, 16 Dec 2016 14:18:58 +0200, Andy Shevchenko wrote:
> > >> > > On Fri, 2016-12-16 at 10:32 +0800, Dave Young wrote:
> > >> > > > On 12/15/16 at 12:28pm, Jean Delvare wrote:
> > >> > > > > I am no kexec expert but this confuses me. Shouldn't the second
> > >> > > > > kernel have access to the EFI systab as the first kernel does? It
> > >> > > > > includes many more pointers than just ACPI and DMI tables, and it
> > >> > > > > would seem inconvenient to have to pass all these addresses
> > >> > > > > individually explicitly.
> > >> > > >
> > >> > > > Yes, in modern linux kernel, kexec has the support for EFI, I think it
> > >> > > > should work naturally at least in x86_64.
> > >> > >
> > >> > > Thanks for this good news!
> > >> > >
> > >> > > Unfortunately Intel Galileo is 32-bit platform.
> > >> >
> > >> > If it was done for X86_64 then maybe it can be generalized to X86?
> > >>
> > >> For X86_64, we have a new way for efi runtime memmory mapping, in i386
> > >> code it still use old ioremap way. It is impossible to use same way as
> > >> the X86_64 since the virtual address space is limited.
> > >>
> > >> But maybe for 32bit, kexec kernel can run in physical mode, but I'm not
> > >> sure, I would suggest Andy to do a test first with efi=noruntime for
> > >> kexec 2nd kernel.
> > >
> > > Guys, it was quite a long no hear from you. As I told you the proposed work
> > > around didn't help. Today I found that Microsoft Surface 3 also affected
> > > by this.
> > >
> > > Can we apply these patches for now until you will find better
> > > solution?
> >
> > Not a chance.  The patches don't apply to any kernel in the git history.
> >
> > Which may be part of your problem.  You are or at least were running
> > with code that has not been merged upstream.
>
> It's done against linux-next.
> Applied clearly. (Not the version in this more than yearly old series
> of course, that's why I told I can resend)
>
> > > P.S. I may resend them rebased on recent vanilla.
> >
> > Second.  I looked at your test results and they don't directly make
> > sense.  dmidecode bypasses the kernel completely or it did last time
> > I looked so I don't know why you would be using that to test if
> > something in the kernel is working.
> >
> > However dmidecode failing suggests that the actual problem is something
> > in the first kernel is stomping the dmi tables.
>
> See below.
>
> > Adding a command line option won't fix stomped tables.
>
> It provides a mechanism, which seems to be absent, to the second
> kernel to know where to look for SMBIOS tables.
>
> > So what I would suggest is:
> > a) Verify that dmidecode works before kexec.
>
> Yes, it does.
>
> > b) Test to see if dmidecode works after kexec.
>
> No, it doesn't.
>
> > c) Once (a) shows that dmidecode works and (b) shows that dmidecode
> >    fails figure out what is stomping your dmi tables during or before
> >    kexec and that is what should get fixed.
>
> The problem here as I can see it that EFI and kexec protocols are not
> friendly to each other.
> I'm not an expert in either. That's why I'm asking for possible
> solutions. And this needs to be done in kernel to allow drivers to
> work.
>
> Does the
>
> commit 4996c02306a25def1d352ec8e8f48895bbc7dea9
> Author: Takao Indoh <indou.takao@jp.fujitsu.com>
> Date:   Thu Jul 14 18:05:21 2011 -0400
>
>     ACPI: introduce "acpi_rsdp=" parameter for kdump
>
> description shed a light on this?
>
> > Now using a non-efi method of dmi detection relies on the
> > tables being between 0xF0000 and 0x10000. AKA the last 64K
> > of the first 1MiB of memory.  You might check to see if your
> > dmi tables are in that address range.
>
> # dmidecode --no-sysfs
> # dmidecode 3.2
> Scanning /dev/mem for entry point.
> # No SMBIOS nor DMI entry point found, sorry.
>
> === with patch applied ===
> # dmidecode
> ...
>         Release Date: 03/10/2015
> ...
>
> >
> > Otherwise I suspect the good solution is to give efi it's own page
> > tables in the kernel and switch to it whenever efi functions are called.
> >
>
> > But on 32bit the Linux kernel has historically been just fine directly
> > accessing the hardware, and ignoring efi and all of the other BIOS's.
>
> It seems not only for 32-bit Linux kernel anymore. MS Surface 3 runs
> 64-bit code.
>
> > So if that doesn't work on Intel Galileo that is probably a firmware
> > problem.
>
> It's not only about Galileo anymore.
>

Looking at the x86 kexec EFI code, it seems that it has special
handling for the legacy SMBIOS table address, but not for the SMBIOS3
table address, which was introduced to accommodate SMBIOS tables
living in memory that is not 32-bit addressable.

Could anyone check whether these systems provide SMBIOS 3.0 tables,
and whether their address gets virtually remapped at ExitBootServices?

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
