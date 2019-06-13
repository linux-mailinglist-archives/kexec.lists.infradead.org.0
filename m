Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19851438BF
	for <lists+kexec@lfdr.de>; Thu, 13 Jun 2019 17:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVSf3l/rESw2jljAN6ByExRpGg3/t59goL32Djxm9RU=; b=m0y8v9571cu8yx
	qj1Mc8Ha3bKrL04ErS627zb4nVbTuDTZbpDnIErZfejKC280aVcPaJNDkIOhPeY1DzPJs71UtwL0L
	rSirRvKmrCDZBAVbp1AQMtbeIqUSLLx1mGxBXNNSeLibKjD9fXnO5AT/WZoX7Hs06oTO76z556PNs
	TECd48yJdyimicScpVbQGd1CuycwcUARPwcLg9hoyAw6wXMcu7c1XtrtNxIMxgdw9pn4zIVI20atl
	5TZklHvBb/Xw5qyHtyC/V18eY6QmnS73Fe19YRlgDzbyuzqnuJSlI3XXmY3Tm+9ME4c5n6o/T8uWy
	MJn6zlI9INxQkM74Istw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRKz-0000BK-Fs; Thu, 13 Jun 2019 15:08:25 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRKZ-0008Kp-Sw
 for kexec@lists.infradead.org; Thu, 13 Jun 2019 15:08:02 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3666D30872C8;
 Thu, 13 Jun 2019 15:07:58 +0000 (UTC)
Received: from localhost (ovpn-12-28.pek2.redhat.com [10.72.12.28])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 944D061B7E;
 Thu, 13 Jun 2019 15:07:47 +0000 (UTC)
Date: Thu, 13 Jun 2019 23:07:44 +0800
From: Baoquan He <bhe@redhat.com>
To: Borislav Petkov <bp@alien8.de>,
 "Lendacky, Thomas" <Thomas.Lendacky@amd.com>
Subject: Re: [PATCH 0/3 v11] add reserved e820 ranges to the kdump kernel
 e820 table
Message-ID: <20190613150744.GR26148@MiWiFi-R3L-srv>
References: <20190608091030.GB32464@zn.tnic>
 <20190608100139.GC26148@MiWiFi-R3L-srv>
 <20190608100623.GA9138@zn.tnic>
 <20190608102659.GA9130@MiWiFi-R3L-srv>
 <20190610113747.GD5488@zn.tnic>
 <20190612015549.GI26148@MiWiFi-R3L-srv>
 <20190612151033.GJ32652@zn.tnic>
 <3dfa5985-008a-20d8-5171-cfe96807c303@amd.com>
 <20190612180724.GP32652@zn.tnic>
 <d89ef4ef-b85a-ea94-acdf-2eed5666ed78@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d89ef4ef-b85a-ea94-acdf-2eed5666ed78@amd.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 13 Jun 2019 15:07:58 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080759_994306_3CB16A92 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "x86@kernel.org" <x86@kernel.org>, lijiang <lijiang@redhat.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mingo@redhat.com" <mingo@redhat.com>, "luto@kernel.org" <luto@kernel.org>,
 "hpa@zytor.com" <hpa@zytor.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "dyoung@redhat.com" <dyoung@redhat.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 06/12/19 at 07:10pm, Lendacky, Thomas wrote:
> On 6/12/19 1:07 PM, Borislav Petkov wrote:
> > On Wed, Jun 12, 2019 at 04:52:22PM +0000, Lendacky, Thomas wrote:
> >> I think the discussion ended up being that debuginfo wasn't being stripped
> >> from the kernel and initrd (mainly the initrd).  What are the sizes of
> >> the kernel and initrd that you are loading for kdump via kexec?
> >>
> >> From previous post:
> >>   kexec -s -p /boot/vmlinuz-5.2.0-rc3+ --initrd=/boot/initrd.img-5.2.0-rc3+
> > 
> > You mean those sizes?
> > 
> > $ ls -lh /boot/vmlinuz-5.2.0-rc3+ /boot/initrd.img-5.2.0-rc3+
> > -rw-r--r-- 1 root root 7.8M Jun 10 12:53 /boot/initrd.img-5.2.0-rc3+
> > -rw-r--r-- 1 root root 6.7M Jun 10 12:53 /boot/vmlinuz-5.2.0-rc3+
> > 
> > That should fit easily in 256M :)
> 
> Certainly seems like they should. I know there are other things that are
> loaded, but that should be plenty of room. I wonder if Baoquan or Lianbo
> could track where things are being loaded to see if everything is being
> calculated and placed properly.

Today I did some investigations on speedway and another customer's
machine with sme support. 

In kdump kernel boot log, we can see that it prints the memory usage as
below from mem_init_print_info() of mem_init(). There it free all
memblock memory into buddy. We can see kernel used (144828K reserved)
before this, about 144M. This is for sure, and I got the same value form
memblock=debug kernel parameter adding.

[    2.109408] Kernel command line: BOOT_IMAGE=(hd0,gpt2)/vmlinuz-5.2.0-rc4+ ro mem_encrypt=on resume=/dev/mapper/rhel_amd--speedway--05-swap console=ttyS0,115200 earlyprintk=serial,0x6000,115200 reset_devices cgroup_disable=memory mce=off numa=off udev.children-max=2 panic=10 rootflags=nofail acpi_no_memhotplug transparent_hugepage=never nr_cpus=1 debug nokaslr disable_cpu_apicid=0 elfcorehdr=1899892K
[    2.155433] Memory: 65572K/262128K available (12292K kernel code, 2047K rwdata, 3840K rodata, 2344K init, 6360K bss, 144828K reserved, 0K cma-reserved)

The free memory in buddy is 65572K, about 65M. This confuses me. I added
below code to print the free memory, it's about 64M. It seems not
changed. I need read code and check further.

[    5.775595] bhe: free:0x10304
[    5.778612] Mem-Info:
[    5.780923] active_anon:1818 inactive_anon:12837 isolated_anon:0
[    5.780923]  active_file:0 inactive_file:0 isolated_file:0
[    5.780923]  unevictable:0 dirty:0 writeback:0 unstable:0
[    5.780923]  slab_reclaimable:1995 slab_unreclaimable:3347
[    5.780923]  mapped:0 shmem:14662 pagetables:1 bounce:0
[    5.780923]  free:16577 free_pcp:3 free_cma:0

--- a/init/main.c
+++ b/init/main.c
@@ -1168,6 +1168,8 @@ static noinline void __init kernel_init_freeable(void)
 
        do_basic_setup();
 
+       pr_info("bhe: free:0x%lx\n", nr_free_pages() << (PAGE_SHIFT - 10));
+       show_mem(0, NULL);

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Above is about code debugging and analysis. From testing results, there
are things impacting the memory usage of kdump kernel. 

1)We need strip DEBUG INFO from kernel modules, otherwise it will bloat
the initrd and its space.

2)And some machines will consume more memory than other, because they own
more pci devices or different devices and drivers. Before init process
run, we will detect and init them, these will eat memory.

With my testing, the speedway machine which has 128 cpus obvisouly consume
more memory than one HP machine. On the HP machine, even 160M
crashkernel memory with DEBUG INFO stripped, kdump kernel can work well.
While 160M crashkernel doesn't satisfy speedway machine, it needs 256M.

3)Some extra kernel parameters may impact memory usage. E.g in Boris's
test, 'log_buf_len=16M' and 'debug' are added, this will cost extra
memory.

kexec -s -p /boot/vmlinuz-5.2.0-rc3+ --initrd=/boot/initrd.img-5.2.0-rc3+ --command-line="maxcpus=1 root=/dev/sda5 ro debug ignore_loglevel
log_buf_len=16M no_console_suspend net.ifnames=0 systemd.log_target=null mem_encrypt=on kvm_amd.sev=1 nr_cpus=1 irqpoll reset_devices vga=normal
LANG=en_US.UTF-8 earlyprintk=serial cgroup_disable=memory mce=off numa=off udev.children-max=2 panic=10 rootflags=nofail acpi_no_memhotplug
transparent_hugepage=never disable_cpu_apicid=0"

Anyway, I will continue investigating, see if I can get exact
information from kernel printing or debugging.

Thanks
Baoquan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
