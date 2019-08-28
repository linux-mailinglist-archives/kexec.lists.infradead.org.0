Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1E0A0AC3
	for <lists+kexec@lfdr.de>; Wed, 28 Aug 2019 21:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ox1kxjdSOFScKb7I+H0CuvEamStVrZ688+WXoKKngpA=; b=XuKMYwINOQXgFj
	Psbqe8CDQZ6K5e+8txJxsTzo4TwcA/O9+lWRSVG5FKdCT9n/86BaIFHXXt2f6JqFilMSVbuXfp1Qm
	ILuXed+QOP+C1gK64rIMI3M/8BW5UB0U6I6z7v6JiRNdwuvfVi31F7guT6kpBl8emsGG+LTGMsk7J
	kmzjxjFAwdWYWQJIlteiRaOpmFZg4z86hXra5jx9jTAJco3zKtaJFhNVdWhPBLQ1c+g5TTx4elIQq
	Zj8Qe7NY9Cd8DIHr+/zVPEVhV0stTZYhksStSnRYAIc0MIdzL/dYmq0PVp86xCiup7JOTCNouCJyi
	+E+xplGhwHCbbpgWr28A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i341R-0006DR-F7; Wed, 28 Aug 2019 19:54:25 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i341N-0006CB-PP
 for kexec@lists.infradead.org; Wed, 28 Aug 2019 19:54:23 +0000
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9E6EF4E4E6
 for <kexec@lists.infradead.org>; Wed, 28 Aug 2019 19:54:19 +0000 (UTC)
Received: by mail-lf1-f72.google.com with SMTP id o4so114369lfi.12
 for <kexec@lists.infradead.org>; Wed, 28 Aug 2019 12:54:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=y8b+VQlMQkntqtzRJkYxCkt06xbQtLJ+059ETXIVBcY=;
 b=H6qfOCv7wtKuxDcg4WJw9pmRF0Hj4fizMsU0lHXjBGUT/W4jKCGQ2Jxj59nnRy1FqN
 h+Br48MET4hYbXTXXl+qdG2w/QkUT2+zwP8YWQCqAI96B90O5M4tovjaB99PSFxu8or+
 cWGwEd7VtXAqio+DnEJSWYSGZNaeIzodewAaRkyE/IFeMAJJRflXV0c6+zjQTt8i2UOu
 O39YQbul8hsIvk5kzPq1pKxplaIzF2ZtHhYh7uCbUQdkDA5ovceEI9UZWpZ31exNBjt0
 WJxRm7vgpNknaZQfqsH+F0YjbjV9CpYBq7rx+/JodF4Ut0VCLfz+5EL3tSUoneRgAs1x
 FVFA==
X-Gm-Message-State: APjAAAXfo5ymPNTVFu50yRcSvd9hsnF7Nm8nMnQPj3GTJTzokdlo8RbW
 GU8rAywy5I01omxKNYCrUpTlLeKL1qay6Cajv//bkf5hRrUgX3jdtqmOv0Vbz5QJib3LiQ3BiTb
 lgQG2Iqxhnc5AuPEOFQcDs43xyxdvSzmAlJnc
X-Received: by 2002:a19:f019:: with SMTP id p25mr2331029lfc.9.1567022056772;
 Wed, 28 Aug 2019 12:54:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyK3ic1OLaVZh6w6r7sNWEw00SCGMigLXTbl6Ig4OQ18KJAPtcKKQ+iM9aDamQ1WHItNelFJFkeuL9Ga2H31LU=
X-Received: by 2002:a19:f019:: with SMTP id p25mr2331013lfc.9.1567022056438;
 Wed, 28 Aug 2019 12:54:16 -0700 (PDT)
MIME-Version: 1.0
References: <c42060b0-12ae-d170-9ad4-03d85919948c@molgen.mpg.de>
 <b208dccd-63d9-e902-28e1-3a6cb44f082f@molgen.mpg.de>
In-Reply-To: <b208dccd-63d9-e902-28e1-3a6cb44f082f@molgen.mpg.de>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Thu, 29 Aug 2019 01:24:05 +0530
Message-ID: <CACi5LpNOyLd9598Ks05t14+Mrc0YNRmmbTML5CmLAODOJQkzFA@mail.gmail.com>
Subject: Re: /proc/vmcore and wrong PAGE_OFFSET
To: Donald Buczek <buczek@molgen.mpg.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_125421_864021_D1B3FCE8 
X-CRM114-Status: GOOD (  31.96  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, linux-pci@vger.kernel.org,
 x86@kernel.org, kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu <iommu@lists.linux-foundation.org>, Simon Horman <horms@verge.net.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Donald,

On Wed, Aug 28, 2019 at 8:38 PM Donald Buczek <buczek@molgen.mpg.de> wrote:
>
> On 8/20/19 11:21 PM, Donald Buczek wrote:
> > Dear Linux folks,
> >
> > I'm investigating a problem, that the crash utility fails to work with our crash dumps:
> >
> >      buczek@kreios:/mnt$ crash vmlinux crash.vmcore
> >      crash 7.2.6
> >      Copyright (C) 2002-2019  Red Hat, Inc.
> >      Copyright (C) 2004, 2005, 2006, 2010  IBM Corporation
> >      Copyright (C) 1999-2006  Hewlett-Packard Co
> >      Copyright (C) 2005, 2006, 2011, 2012  Fujitsu Limited
> >      Copyright (C) 2006, 2007  VA Linux Systems Japan K.K.
> >      Copyright (C) 2005, 2011  NEC Corporation
> >      Copyright (C) 1999, 2002, 2007  Silicon Graphics, Inc.
> >      Copyright (C) 1999, 2000, 2001, 2002  Mission Critical Linux, Inc.
> >      This program is free software, covered by the GNU General Public License,
> >      and you are welcome to change it and/or distribute copies of it under
> >      certain conditions.  Enter "help copying" to see the conditions.
> >      This program has absolutely no warranty.  Enter "help warranty" for details.
> >      GNU gdb (GDB) 7.6
> >      Copyright (C) 2013 Free Software Foundation, Inc.
> >      License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
> >      This is free software: you are free to change and redistribute it.
> >      There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
> >      and "show warranty" for details.
> >      This GDB was configured as "x86_64-unknown-linux-gnu"...
> >      crash: read error: kernel virtual address: ffff89807ff77000  type: "memory section root table"
> >
> > The crash file is a copy of /dev/vmcore taken by a crashkernel after a sysctl-forced panic.
> >
> > It looks to me, that  0xffff89807ff77000 is not readable, because the virtual addresses stored in the elf header of the dump file are off by 0x0000008000000000:
> >
> >      buczek@kreios:/mnt$ readelf -a crash.vmcore | grep LOAD | perl -lane 'printf "%s (%016x)\n",$_,hex($F[2])-hex($F[3])'
> >        LOAD           0x000000000000d000 0xffffffff81000000 0x000001007d000000 (fffffeff04000000)
> >        LOAD           0x0000000001c33000 0xffff880000001000 0x0000000000001000 (ffff880000000000)
> >        LOAD           0x0000000001cc1000 0xffff880000090000 0x0000000000090000 (ffff880000000000)
> >        LOAD           0x0000000001cd1000 0xffff880000100000 0x0000000000100000 (ffff880000000000)
> >        LOAD           0x0000000001cd2070 0xffff880000100070 0x0000000000100070 (ffff880000000000)
> >        LOAD           0x0000000019bd2000 0xffff880038000000 0x0000000038000000 (ffff880000000000)
> >        LOAD           0x000000004e6a1000 0xffff88006ffff000 0x000000006ffff000 (ffff880000000000)
> >        LOAD           0x000000004e6a2000 0xffff880100000000 0x0000000100000000 (ffff880000000000)
> >        LOAD           0x0000001fcda22000 0xffff882080000000 0x0000002080000000 (ffff880000000000)
> >        LOAD           0x0000003fcd9a2000 0xffff884080000000 0x0000004080000000 (ffff880000000000)
> >        LOAD           0x0000005fcd922000 0xffff886080000000 0x0000006080000000 (ffff880000000000)
> >        LOAD           0x0000007fcd8a2000 0xffff888080000000 0x0000008080000000 (ffff880000000000)
> >        LOAD           0x0000009fcd822000 0xffff88a080000000 0x000000a080000000 (ffff880000000000)
> >        LOAD           0x000000bfcd7a2000 0xffff88c080000000 0x000000c080000000 (ffff880000000000)
> >        LOAD           0x000000dfcd722000 0xffff88e080000000 0x000000e080000000 (ffff880000000000)
> >        LOAD           0x000000fc4d722000 0xffff88fe00000000 0x000000fe00000000 (ffff880000000000)
> >
> > (Columns are File offset, Virtual Address, Physical Address and computed offset).
> >
> > I would expect the offset between the virtual and the physical address to be PAGE_OFFSET, which is 0xffff88800000000 on x86_64, not 0xffff880000000000. Unlike /proc/vmcore, /proc/kcore shows the same physical memory (of the last memory section above) with a correct offset:
> >
> >      buczek@kreios:/mnt$ sudo readelf -a /proc/kcore | grep 0x000000fe00000000 | perl -lane 'printf "%s (%016x)\n",$_,hex($F[2])-hex($F[3])'
> >        LOAD           0x0000097e00004000 0xffff897e00000000 0x000000fe00000000 (ffff888000000000)
> >
> > The failing address 0xffff89807ff77000 happens to be at the end of the last memory section. It is the mem_section array, which crash wants to load and which is visible in the running system:
> >
> >      buczek@kreios:/mnt$ sudo gdb vmlinux /proc/kcore
> >      [...]
> >      (gdb) print mem_section
> >      $1 = (struct mem_section **) 0xffff89807ff77000
> >      (gdb) print *mem_section
> >      $2 = (struct mem_section *) 0xffff88a07f37b000
> >      (gdb) print **mem_section
> >      $3 = {section_mem_map = 18446719884453740551, pageblock_flags = 0xffff88a07f36f040}
> >
> > I can read the same information from the crash dump, if I account for the 0x0000008000000000 error:
> >
> >      buczek@kreios:/mnt$ gdb vmlinux crash.vmcore
> >      [...]
> >      (gdb) print mem_section
> >      $1 = (struct mem_section **) 0xffff89807ff77000
> >      (gdb) print *mem_section
> >      Cannot access memory at address 0xffff89807ff77000
> >      (gdb) set $t=(struct mem_section **) ((char *)mem_section - 0x0000008000000000)
> >      (gdb) print *$t
> >      $2 = (struct mem_section *) 0xffff88a07f37b000
> >      (gdb) set $s=(struct mem_section *)((char *)*$t - 0x0000008000000000 )
> >      (gdb) print *$s
> >      $3 = {section_mem_map = 18446719884453740551, pageblock_flags = 0xffff88a07f36f040}
> >
> > In the above example, the running kernel, the crashed kernel and the crashkernel are all the same 4.19.57 compilation. But I've tried with several other versions ( crashkernel 4.4, running kernel from 4.0 to linux master) with the same result.
> >
> > The machine in the above example has several numa nodes (this is why there are so many LOAD headers). But I've tried this with a small kvm virtual machine and got the same result.
> >
> >      buczek@kreios:/mnt/linux-4.19.57-286.x86_64/build$ grep RANDOMIZE_BASE .config
> >      # CONFIG_RANDOMIZE_BASE is not set
> >      buczek@kreios:/mnt/linux-4.19.57-286.x86_64/build$ grep SPARSEMEM .config
> >      CONFIG_ARCH_SPARSEMEM_ENABLE=y
> >      CONFIG_ARCH_SPARSEMEM_DEFAULT=y
> >      CONFIG_SPARSEMEM_MANUAL=y
> >      CONFIG_SPARSEMEM=y
> >      CONFIG_SPARSEMEM_EXTREME=y
> >      CONFIG_SPARSEMEM_VMEMMAP_ENABLE=y
> >      CONFIG_SPARSEMEM_VMEMMAP=y
> >      buczek@kreios:/mnt/linux-4.19.57-286.x86_64/build$ grep PAGE_TABLE_ISOLATION .config
> >      CONFIG_PAGE_TABLE_ISOLATION=y
> >
> > Any ideas?
> >
> > Donald
>
> To answer my own question for the records:

Thanks for the update.

I think Paul (may be from your organization?) posted a similar issue
and I had enquired about a few environment details from him for
helping debug this issue (see <https://lkml.org/lkml/2019/8/19/938>).
But he seems to be  OOO..

> Our kexec command line is
>
>      /usr/sbin/kexec -p /boot/bzImage.crash --initrd=/boot/grub/initramfs.igz --command-line="root=LABEL=root ro console=ttyS1,115200n8 console=tty0 irqpoll nr_cpus=1 reset_devices panic=5 CRASH"
>
> So we neither gave -s (--kexec-file-syscall) nor -a ( --kexec-syscall-auto ). For this reason, kexec used the kexec_load() syscall instead of the newer kexec_file_load syscall.

'-p' flag is for indicating a kdump operation (i.e you want to load a
crash kernel and want to execute it if the primary kernel crashes) and
different from the kexec load ('-l' or '-s' operation where you want
to load and execute another kernel).

> With kexec_load(), the elf headers for the crash, which include program header for the old system ram, are not computed by the kernel, but by the userspace program from kexec-tools.

See above, kdump and kexec-load are completely different operation and
I am not sure how using kdump options seem to help your case when
kexec_load() / kexec_file_load() don't seem to work.

However looking at your and Paul's original email, I can decipher that
you are able to generate a vmcore (although an incomplete one), so I
am pretty sure you are using the kexec -p (i.e. kdump) feature rather
than kexec to another kernel :)

> Linux kernel commit d52888aa ("x86/mm: Move LDT remap out of KASLR region on 5-level paging") changed the base of the direct mapping from 0xffff880000000000 to 0xffff888000000000. This was merged into v4.20-rc2.
>
> kexec-tools, however, still has the old address hard coded:

>      buczek@avaritia:/scratch/cluster/buczek/kexec-tools (master)$ git grep X86_64_PAGE_OFFSET
>      kexec/arch/i386/crashdump-x86.c:                        elf_info->page_offset = X86_64_PAGE_OFFSET_PRE_2_6_27;
>      kexec/arch/i386/crashdump-x86.c:                        elf_info->page_offset = X86_64_PAGE_OFFSET;
>      kexec/arch/i386/crashdump-x86.h:#define X86_64_PAGE_OFFSET_PRE_2_6_27   0xffff810000000000ULL
>      kexec/arch/i386/crashdump-x86.h:#define X86_64_PAGE_OFFSET              0xffff880000000000ULL

Good catch.
I see, while other user-space tools (for e.g. makedumpfile have
migrated to using the available PT_LOADs for example in the
'/proc/kcore' file (see [0] for reference) to determine the correct
PAGE_OFFSET value, it seems kexec-tools is still using MACRO values
for the same - which probably are not maintainable and need to be
updated with changes in the kernel.

I will try to reproduce this at my end (I think it should be easy to
do so on Qemu) and send a kexec-tools fix shortly. I will Cc you for
the fix patch.

Please feel free to test the same and let me know in case you face any
further issues.

Thanks,
Bhupesh

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
