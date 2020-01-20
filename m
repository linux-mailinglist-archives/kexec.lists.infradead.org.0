Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 056421433F1
	for <lists+kexec@lfdr.de>; Mon, 20 Jan 2020 23:32:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82HVPdoaxlpUD1fq2wuZhHgTvF6c7C2Eydq1g6MRJ4A=; b=loU+mU9UdozJnq
	b8t1YJ6caDnJiqCyVBmrEOXttBPfn3vPvaGLu9MWRa8fBTs5A/K3ejJaRE3hmZGELxJkrUP1lcyLz
	9FDaHC8suXjqepUxh5MHNMnqSMSk1VW+cfAhGq7K098C+Bgw1bFI/X+sgK4ODcwCHiec02fnYHcVQ
	UacCkLbvfGG3wzjhI5fzMlLUSJEzmlXP0XpVGU2rOB1xJvUfGiYaVX2VETSH1hwD/jPNIy0unX+ev
	AS+C3WYglhfzOi2ksVyrBKwpvC2n7Rk6xRevAROEf2e8+PMFpWM31YERHDW6KO9yEktIuRe6/j6El
	zTAntJV57USjF6DbaVDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itfaV-0006gF-8x; Mon, 20 Jan 2020 22:32:03 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itfaS-0006fr-KP
 for kexec@lists.infradead.org; Mon, 20 Jan 2020 22:32:02 +0000
Received: by mail-pg1-x541.google.com with SMTP id r11so384949pgf.1
 for <kexec@lists.infradead.org>; Mon, 20 Jan 2020 14:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SWYcqg2MlYpijaEODGEzNEsD5V2NHEYSEaSIwio0+QA=;
 b=JAmoLfquU6/yi6GBUhzXqhOYP7gTCknaSDDwne67CBH5XtA05EY6+2MkTdbXCFN+RI
 gAskyhjOX/VXuTWLivj+Sg0W9jPcPG/X3vaEyVNkPhOw+GSqsw7R1uLqHKVEQpTyZMUy
 EpOEs5PjYokQefzOSo1gSWH10STGuuRntbkxQs5C1MlPlWrXwyJJG8DuxzA8JF/SfDau
 xugwqjK3cqC8qDD1Iz/pslRpWC78M2B6I5+7N9ewzMl0/E6oK0BRIoz7kqcs6tRbJWF5
 vABpwkUxD9K2HO6xR9oeXLrJuZGXW/YpOtJHQe3r3jetrVzD7BGCvDe6Ihl+HBhTiSzc
 RiSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SWYcqg2MlYpijaEODGEzNEsD5V2NHEYSEaSIwio0+QA=;
 b=DCK1gLnvjV9IDLL2sY5c0rJf3nC5dyWqMcbQUJcdw+oCoDDjW6fdKDsh6ciqWuDVki
 Ao5PW/cUpuJDVv6oeHcv74HBogLqMpa4sFcCjmYUcU263TcvVaR8vT1fme+rZy9g618Y
 QkYXjjVMBegzGESWvG3ACrvBXfbnsX3n4KibazTBgrh4j+ACP2tADvSmFUPjWJW57gqh
 2r7JF3s7RQqnRXRx3/cmC/CzX/VCn4kIN5yk5i6pFynZYdIVMvKc5BCMJGJxUtpE1hPN
 KyWIo3EEwb+ERbThD6hEKKdWAKhwbFg5tYLiMqZFgDBCUs9lSR1leXTaNSfimjx1m7G0
 PmsQ==
X-Gm-Message-State: APjAAAXOBywn5eHNyuS03n7KuHUHgPmXbYSkLprsUpBUr8O3x4r9p4LX
 ZqQIb5Nr+kYsLNj//mQ2+40n7Y492PClr+PIWWc=
X-Google-Smtp-Source: APXvYqzLH6vwBU33tfO69+R/CxE5YMYT11Y4CRXA4Z/i/z3IK4BEGYKlQSOHVNc/0R7Wu9tv/YX6iNbBZPiuB4b+Kdc=
X-Received: by 2002:a65:5242:: with SMTP id q2mr1986621pgp.74.1579559519299;
 Mon, 20 Jan 2020 14:31:59 -0800 (PST)
MIME-Version: 1.0
References: <20161202195416.58953-1-andriy.shevchenko@linux.intel.com>
 <20161202195416.58953-3-andriy.shevchenko@linux.intel.com>
 <20161215122856.7d24b7a8@endymion>
 <20161216023213.GA4505@dhcp-128-65.nay.redhat.com>
 <1481890738.9552.70.camel@linux.intel.com> <20161216143330.69e9c8ee@endymion>
 <20161217105721.GB6922@dhcp-128-65.nay.redhat.com>
 <20200120121927.GJ32742@smile.fi.intel.com>
 <87a76i9ksr.fsf@x220.int.ebiederm.org>
In-Reply-To: <87a76i9ksr.fsf@x220.int.ebiederm.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 21 Jan 2020 00:31:47 +0200
Message-ID: <CAHp75VdjwWfqHtJ3n-UK_n5nzpgcpERbM+_9-Z3FrjJx7nHQzQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] firmware: dmi_scan: Pass dmi_entry_point to
 kexec'ed kernel
To: "Eric W. Biederman" <ebiederm@xmission.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_143200_699559_D566D9E3 
X-CRM114-Status: GOOD (  29.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Matt Fleming <matt@codeblueprint.co.uk>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Dave Young <dyoung@redhat.com>, Jean Delvare <jdelvare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 9:28 PM Eric W. Biederman <ebiederm@xmission.com> wrote:
> Andy Shevchenko <andriy.shevchenko@linux.intel.com> writes:
> > On Sat, Dec 17, 2016 at 06:57:21PM +0800, Dave Young wrote:
> >> Ccing efi people.
> >>
> >> On 12/16/16 at 02:33pm, Jean Delvare wrote:
> >> > On Fri, 16 Dec 2016 14:18:58 +0200, Andy Shevchenko wrote:
> >> > > On Fri, 2016-12-16 at 10:32 +0800, Dave Young wrote:
> >> > > > On 12/15/16 at 12:28pm, Jean Delvare wrote:
> >> > > > > I am no kexec expert but this confuses me. Shouldn't the second
> >> > > > > kernel have access to the EFI systab as the first kernel does? It
> >> > > > > includes many more pointers than just ACPI and DMI tables, and it
> >> > > > > would seem inconvenient to have to pass all these addresses
> >> > > > > individually explicitly.
> >> > > >
> >> > > > Yes, in modern linux kernel, kexec has the support for EFI, I think it
> >> > > > should work naturally at least in x86_64.
> >> > >
> >> > > Thanks for this good news!
> >> > >
> >> > > Unfortunately Intel Galileo is 32-bit platform.
> >> >
> >> > If it was done for X86_64 then maybe it can be generalized to X86?
> >>
> >> For X86_64, we have a new way for efi runtime memmory mapping, in i386
> >> code it still use old ioremap way. It is impossible to use same way as
> >> the X86_64 since the virtual address space is limited.
> >>
> >> But maybe for 32bit, kexec kernel can run in physical mode, but I'm not
> >> sure, I would suggest Andy to do a test first with efi=noruntime for
> >> kexec 2nd kernel.
> >
> > Guys, it was quite a long no hear from you. As I told you the proposed work
> > around didn't help. Today I found that Microsoft Surface 3 also affected
> > by this.
> >
> > Can we apply these patches for now until you will find better
> > solution?
>
> Not a chance.  The patches don't apply to any kernel in the git history.
>
> Which may be part of your problem.  You are or at least were running
> with code that has not been merged upstream.

It's done against linux-next.
Applied clearly. (Not the version in this more than yearly old series
of course, that's why I told I can resend)

> > P.S. I may resend them rebased on recent vanilla.
>
> Second.  I looked at your test results and they don't directly make
> sense.  dmidecode bypasses the kernel completely or it did last time
> I looked so I don't know why you would be using that to test if
> something in the kernel is working.
>
> However dmidecode failing suggests that the actual problem is something
> in the first kernel is stomping the dmi tables.

See below.

> Adding a command line option won't fix stomped tables.

It provides a mechanism, which seems to be absent, to the second
kernel to know where to look for SMBIOS tables.

> So what I would suggest is:
> a) Verify that dmidecode works before kexec.

Yes, it does.

> b) Test to see if dmidecode works after kexec.

No, it doesn't.

> c) Once (a) shows that dmidecode works and (b) shows that dmidecode
>    fails figure out what is stomping your dmi tables during or before
>    kexec and that is what should get fixed.

The problem here as I can see it that EFI and kexec protocols are not
friendly to each other.
I'm not an expert in either. That's why I'm asking for possible
solutions. And this needs to be done in kernel to allow drivers to
work.

Does the

commit 4996c02306a25def1d352ec8e8f48895bbc7dea9
Author: Takao Indoh <indou.takao@jp.fujitsu.com>
Date:   Thu Jul 14 18:05:21 2011 -0400

    ACPI: introduce "acpi_rsdp=" parameter for kdump

description shed a light on this?

> Now using a non-efi method of dmi detection relies on the
> tables being between 0xF0000 and 0x10000. AKA the last 64K
> of the first 1MiB of memory.  You might check to see if your
> dmi tables are in that address range.

# dmidecode --no-sysfs
# dmidecode 3.2
Scanning /dev/mem for entry point.
# No SMBIOS nor DMI entry point found, sorry.

=== with patch applied ===
# dmidecode
...
        Release Date: 03/10/2015
...

>
> Otherwise I suspect the good solution is to give efi it's own page
> tables in the kernel and switch to it whenever efi functions are called.
>

> But on 32bit the Linux kernel has historically been just fine directly
> accessing the hardware, and ignoring efi and all of the other BIOS's.

It seems not only for 32-bit Linux kernel anymore. MS Surface 3 runs
64-bit code.

> So if that doesn't work on Intel Galileo that is probably a firmware
> problem.

It's not only about Galileo anymore.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
