Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1582C39A87
	for <lists+kexec@lfdr.de>; Sat,  8 Jun 2019 05:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ucd3Km6W49TbQESQQIvbrzU1BIdEWguCnH5rtkCtufU=; b=oQPvtomAI21RZQ
	a1759wel9kk5xVabikVcHeaIVSUd6sQ3gbx/72DNpqgvOpS21ftJQi2HTckfmtW7acmZtqqPPDvPZ
	VmNMkY836l6c4lEzUj6WZWVg2Na4H1PfKrFDQs4voergTMhR4tBZOxLamrai1ufEEx4oYd0F/YTy+
	uf6xjULWfQXMTL++FonuOVVhJ1PdoS0GJk90rHyL1P24PXtX9haWg+20zaw3rCit7nRkAewSUPRdM
	jQAGldSwafDgQsca09yMSMEdMI1NtTxtYeCUUwu9Ab3LGQD7sj9UqqrIPEaS2a3yirh0HKXAkLFp9
	sTPWkGejmC8I6JQU8JBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZSRe-0001q4-9r; Sat, 08 Jun 2019 03:55:06 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZSRX-0001gZ-Hx
 for kexec@lists.infradead.org; Sat, 08 Jun 2019 03:55:01 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 735952E95AF;
 Sat,  8 Jun 2019 03:54:57 +0000 (UTC)
Received: from localhost (ovpn-12-31.pek2.redhat.com [10.72.12.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5AE8510013D9;
 Sat,  8 Jun 2019 03:54:54 +0000 (UTC)
Date: Sat, 8 Jun 2019 11:54:51 +0800
From: Baoquan He <bhe@redhat.com>
To: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH 0/3 v11] add reserved e820 ranges to the kdump kernel
 e820 table
Message-ID: <20190608035451.GB26148@MiWiFi-R3L-srv>
References: <20190423013007.17838-1-lijiang@redhat.com>
 <12847a03-3226-0b29-97b5-04d404410147@redhat.com>
 <20190607174211.GN20269@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607174211.GN20269@zn.tnic>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Sat, 08 Jun 2019 03:54:57 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_205459_614394_2594639C 
X-CRM114-Status: GOOD (  16.34  )
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
Cc: Thomas.Lendacky@amd.com, x86@kernel.org, lijiang <lijiang@redhat.com>,
 peterz@infradead.org, dave.hansen@linux.intel.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, luto@kernel.org, hpa@zytor.com,
 tglx@linutronix.de, dyoung@redhat.com, akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 06/07/19 at 07:42pm, Borislav Petkov wrote:
> On Tue, May 28, 2019 at 03:30:21PM +0800, lijiang wrote:
> > Hi, Boris and Thomas
> > 
> > Could you give me any suggestions about this patch series? Other reviewers?
> 
> So I'm testing this on a box with SME enabled but after loading the
> crash kernel, it freezes instead of rebooting. My cmdline is:
> 
>  kexec -s -p /boot/vmlinuz-5.2.0-rc3+ --initrd=/boot/initrd.img-5.2.0-rc3+ --command-line="maxcpus=1 root=/dev/sda5 ro debug ignore_loglevel log_buf_len=16M no_console_suspend net.ifnames=0 systemd.log_target=null mem_encrypt=on kvm_amd.sev=1 nr_cpus=1 irqpoll reset_devices vga=normal LANG=en_US.UTF-8 earlyprintk=serial cgroup_disable=memory mce=off numa=off udev.children-max=2 panic=10 rootflags=nofail acpi_no_memhotplug transparent_hugepage=never disable_cpu_apicid=0"
> 
> and the reserved range is:
> 
> [    0.000000] Reserving 256MB of memory at 3392MB for crashkernel (System RAM: 16271MB)

Is it a UEFI box? If it's uefi machine, it should relate to below issue.
Because kexec always fails to randomly choose a new position for kernel.

The current kexec code fills boot_params->efi_info->efi_loader_signature,
but doesn't contruct efi_memmap table. The kexec/kdump kernel will always
fail to find available slot for KASLR in process_efi_entries.


> 
> I'm wondering if it is related to
> 
> https://lkml.kernel.org/r/20190604134952.GC26891@MiWiFi-R3L-srv
> 
> Thx.
> 
> -- 
> Regards/Gruss,
>     Boris.
> 
> Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
