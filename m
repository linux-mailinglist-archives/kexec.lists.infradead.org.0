Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C23B139C6C
	for <lists+kexec@lfdr.de>; Sat,  8 Jun 2019 12:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBB+EJk1fMzYKVjjUPHf9zJuPZc3qZb/mJqhSdM4Qoc=; b=dVfF8iJ/ZVAxEn
	4esPVLkw/m5x0wkLqMn7UHrNReNgmI9j2UtBlTEYdcc4Sd8FhDVH1VjB8mjnUC/FVxxPSxwcIRoaK
	P1Tt9OUzrmmWAxSYiSeq5eV19ShBAsm7JBb6GfCUGn1ZQNvbwjzOmifl0vm/cSndczUVJeXN3UPEh
	xJYY5gcyzLE3TMz0xDoYTCQTEeKahzlx8iJww2vEiTCewWDYy5g1EMLiwvTUI/5HBkhuNdAYpQQmq
	FUBv3GcDV2vOg5uc1zIiFdnLWZkBI3F2Q2nXynPT2DKLFDFUGzSzb1nr5dDgLYAkx/45z21W2qpOf
	a1wgsyF1A4jdQJf3YkjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZYZ4-0008TN-07; Sat, 08 Jun 2019 10:27:10 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZYZ0-0008Sj-M7
 for kexec@lists.infradead.org; Sat, 08 Jun 2019 10:27:08 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9D6C8368E6;
 Sat,  8 Jun 2019 10:27:05 +0000 (UTC)
Received: from localhost (ovpn-12-31.pek2.redhat.com [10.72.12.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 39E4360589;
 Sat,  8 Jun 2019 10:27:01 +0000 (UTC)
Date: Sat, 8 Jun 2019 18:26:59 +0800
From: Baoquan He <bhe@redhat.com>
To: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH 0/3 v11] add reserved e820 ranges to the kdump kernel
 e820 table
Message-ID: <20190608102659.GA9130@MiWiFi-R3L-srv>
References: <20190423013007.17838-1-lijiang@redhat.com>
 <12847a03-3226-0b29-97b5-04d404410147@redhat.com>
 <20190607174211.GN20269@zn.tnic>
 <20190608035451.GB26148@MiWiFi-R3L-srv>
 <20190608091030.GB32464@zn.tnic>
 <20190608100139.GC26148@MiWiFi-R3L-srv>
 <20190608100623.GA9138@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608100623.GA9138@zn.tnic>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Sat, 08 Jun 2019 10:27:05 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_032706_742419_DD925093 
X-CRM114-Status: GOOD (  16.03  )
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
Cc: Thomas.Lendacky@amd.com, x86@kernel.org, lijiang <lijiang@redhat.com>,
 peterz@infradead.org, dave.hansen@linux.intel.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, luto@kernel.org, hpa@zytor.com,
 tglx@linutronix.de, dyoung@redhat.com, akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 06/08/19 at 12:06pm, Borislav Petkov wrote:
> On Sat, Jun 08, 2019 at 06:01:39PM +0800, Baoquan He wrote:
> > OK, it may be different with the case we met, if panic happened when
> > load a kdump kernel.
> > 
> > We can load with 'kexec -l' or 'kexec -p', but can't boot after triggering
> > crash or execute 'kexec -e' to do kexec jumping.
> 
> No, I load a kdump kernel properly with this command:
> 
>  kexec -s -p /boot/vmlinuz-5.2.0-rc3+ --initrd=/boot/initrd.img-5.2.0-rc3+ --command-line="maxcpus=1 root=/dev/sda5 ro debug ignore_loglevel
> log_buf_len=16M no_console_suspend net.ifnames=0 systemd.log_target=null mem_encrypt=on kvm_amd.sev=1 nr_cpus=1 irqpoll reset_devices vga=normal
> LANG=en_US.UTF-8 earlyprintk=serial cgroup_disable=memory mce=off numa=off udev.children-max=2 panic=10 rootflags=nofail acpi_no_memhotplug
> transparent_hugepage=never disable_cpu_apicid=0"
> 
> And that succeeds judging from
> 
> $ grep . /sys/kernel/kexec_*
> 
> Then I trigger a panic with
> 
> echo c > /proc/sysrq-trigger
> 
> and this is where it hangs and doesn't load the kdump kernel.

OK, I see. Then it should be the issue we have met and talked about with
Tom.
https://lkml.kernel.org/r/20190604134952.GC26891@MiWiFi-R3L-srv

You can apply Tom's patch as below. I tested it, it can make kexec
kernel succeed to boot, but failed for kdump kernel booting. The kdump
kernel can boot till the end of kernel initialization, then hang with a
call trace. I have pasted the log in the above thread. Haven't got the
reason.
http://lkml.kernel.org/r/508c2853-dc4f-70a6-6fa8-97c950dc31c6@amd.com


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
