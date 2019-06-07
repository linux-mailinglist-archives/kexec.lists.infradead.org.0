Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF6839380
	for <lists+kexec@lfdr.de>; Fri,  7 Jun 2019 19:42:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SHwojOqF++Oratm/usMftAijGId1omoyME2YMxiv2sU=; b=nbTTNNAuFAxb4K
	Tw64i3KQLFc7DruAVfQnLf76EmGBHcFfpWVeYuG013Ir0iDWOuPrkUAeKZEQZlBATdoFWYealIxJG
	48MC/hnY/WkTMVqemkwqzrE4JueGiHJbNc+QzDUUPEc1yAu7Es7crWNSyTsEGAeYDKP7eE9QXCTLo
	6M+9RJPbvyyeB3h9tYDiD9glVhwPKD66r1SUg2lADuWvQxucBTAvk239Ka0chlCXRhRz0qK/oQaoI
	D/q9thEb2IyIL8qHd8KgjT3YohUw2jxDEPU7lSsfFX3+dKzJKjLBWsp/1NTn0v1mr+aYwV0NeRrBr
	LD/cuEmYYquahPR3IOpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZIsd-0006c8-8p; Fri, 07 Jun 2019 17:42:19 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZIsa-0006bp-IQ
 for kexec@lists.infradead.org; Fri, 07 Jun 2019 17:42:18 +0000
Received: from zn.tnic (p200300EC2F066300951FA2F4E0AD5C5F.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f06:6300:951f:a2f4:e0ad:5c5f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 0AB7F1EC0985;
 Fri,  7 Jun 2019 19:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1559929335;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=JQAA3WN3TzT4ccULLhRVUNCaToxHzRDaxQlu0v0KeKg=;
 b=rIQF9uV41BvAC4hfRi8JcZbwUXDaNc64zAoy9ThP0f4r75Gr9YWrfKDJiI8r5Hm3CcAMo3
 eEpBzGhEpnSvlmxv6snr8d4LM5DOmbodNzpImQN035obHy8RqWLj4ls4/DOK5CG/dKIWgl
 PTkp9mSUVWoqx0lH20XB56ic/xGjWmU=
Date: Fri, 7 Jun 2019 19:42:11 +0200
From: Borislav Petkov <bp@alien8.de>
To: lijiang <lijiang@redhat.com>
Subject: Re: [PATCH 0/3 v11] add reserved e820 ranges to the kdump kernel
 e820 table
Message-ID: <20190607174211.GN20269@zn.tnic>
References: <20190423013007.17838-1-lijiang@redhat.com>
 <12847a03-3226-0b29-97b5-04d404410147@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12847a03-3226-0b29-97b5-04d404410147@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_104216_762470_52ADA758 
X-CRM114-Status: UNSURE (   8.51  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Thomas.Lendacky@amd.com, x86@kernel.org, bhe@redhat.com,
 peterz@infradead.org, dave.hansen@linux.intel.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, luto@kernel.org, hpa@zytor.com,
 tglx@linutronix.de, dyoung@redhat.com, akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 03:30:21PM +0800, lijiang wrote:
> Hi, Boris and Thomas
> 
> Could you give me any suggestions about this patch series? Other reviewers?

So I'm testing this on a box with SME enabled but after loading the
crash kernel, it freezes instead of rebooting. My cmdline is:

 kexec -s -p /boot/vmlinuz-5.2.0-rc3+ --initrd=/boot/initrd.img-5.2.0-rc3+ --command-line="maxcpus=1 root=/dev/sda5 ro debug ignore_loglevel log_buf_len=16M no_console_suspend net.ifnames=0 systemd.log_target=null mem_encrypt=on kvm_amd.sev=1 nr_cpus=1 irqpoll reset_devices vga=normal LANG=en_US.UTF-8 earlyprintk=serial cgroup_disable=memory mce=off numa=off udev.children-max=2 panic=10 rootflags=nofail acpi_no_memhotplug transparent_hugepage=never disable_cpu_apicid=0"

and the reserved range is:

[    0.000000] Reserving 256MB of memory at 3392MB for crashkernel (System RAM: 16271MB)

I'm wondering if it is related to

https://lkml.kernel.org/r/20190604134952.GC26891@MiWiFi-R3L-srv

Thx.

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
