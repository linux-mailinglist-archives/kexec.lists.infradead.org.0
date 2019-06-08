Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED77B39C53
	for <lists+kexec@lfdr.de>; Sat,  8 Jun 2019 12:06:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGgKZLykq20WpuO5OrgIJthbxAzV0T6e5lQsG1UFN6I=; b=kjbYoEklRZK0EY
	FSK5//ukO1S/vu/ev9OOu5qM4UJ9sfutvWAwKx5IwpfJYh4mhjmhx/v/hmuVaUnwZUMA/s7R44vy5
	TnutTXX5PSZfn+DTJjxpO14br4ELjUM9BEq/Sax9K/ARmVFOtHHq00GXZFGg4DQh/9+rinzSZCnCw
	ygYE8/PYHIVALur8ESQ0vl3raDxTEWpDo8hVm3EKkeHg4387S91T0ViCkm+rlYtfnujcaT5j1vYXJ
	AKs+ism0aOnzk8si5eUFgT6wFtfDUs95DT1B5acyrkjSMEx8rzc9GO/dsKNxxAWmptkUyzAylNR0m
	NHug/PrW5lt3e6OCCNcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZYFB-0001lR-Io; Sat, 08 Jun 2019 10:06:37 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZYF8-0001kc-GC
 for kexec@lists.infradead.org; Sat, 08 Jun 2019 10:06:35 +0000
Received: from zn.tnic (p200300EC2F288A00DCF654BEDE068B01.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f28:8a00:dcf6:54be:de06:8b01])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 00F2B1EC05D6;
 Sat,  8 Jun 2019 12:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1559988391;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=J0c5GkEsaYQbLtP9J5ilmVR1Vgpny5H8ngwcgeeaXHo=;
 b=p3lTDm5PwVJmT23wP4Nn/Yh+ezegk/JtyB6Lt+BPCGOESHrTOw95HGP8u1oLD7dkSj2d4O
 k2jEVE89E4zOBfzhwfhuNk2PUQfDEGALbs3VbrMTOMXtqqOxBaZtxa71j6jZZZ0IrchLgI
 +3crZOEVryy24gZF7HODIINblOUotQw=
Date: Sat, 8 Jun 2019 12:06:23 +0200
From: Borislav Petkov <bp@alien8.de>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH 0/3 v11] add reserved e820 ranges to the kdump kernel
 e820 table
Message-ID: <20190608100623.GA9138@zn.tnic>
References: <20190423013007.17838-1-lijiang@redhat.com>
 <12847a03-3226-0b29-97b5-04d404410147@redhat.com>
 <20190607174211.GN20269@zn.tnic>
 <20190608035451.GB26148@MiWiFi-R3L-srv>
 <20190608091030.GB32464@zn.tnic>
 <20190608100139.GC26148@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608100139.GC26148@MiWiFi-R3L-srv>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_030634_692707_AE406393 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Sat, Jun 08, 2019 at 06:01:39PM +0800, Baoquan He wrote:
> OK, it may be different with the case we met, if panic happened when
> load a kdump kernel.
> 
> We can load with 'kexec -l' or 'kexec -p', but can't boot after triggering
> crash or execute 'kexec -e' to do kexec jumping.

No, I load a kdump kernel properly with this command:

 kexec -s -p /boot/vmlinuz-5.2.0-rc3+ --initrd=/boot/initrd.img-5.2.0-rc3+ --command-line="maxcpus=1 root=/dev/sda5 ro debug ignore_loglevel
log_buf_len=16M no_console_suspend net.ifnames=0 systemd.log_target=null mem_encrypt=on kvm_amd.sev=1 nr_cpus=1 irqpoll reset_devices vga=normal
LANG=en_US.UTF-8 earlyprintk=serial cgroup_disable=memory mce=off numa=off udev.children-max=2 panic=10 rootflags=nofail acpi_no_memhotplug
transparent_hugepage=never disable_cpu_apicid=0"

And that succeeds judging from

$ grep . /sys/kernel/kexec_*

Then I trigger a panic with

echo c > /proc/sysrq-trigger

and this is where it hangs and doesn't load the kdump kernel.

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
