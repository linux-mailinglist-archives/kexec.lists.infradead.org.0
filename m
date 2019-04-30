Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA37F196
	for <lists+kexec@lfdr.de>; Tue, 30 Apr 2019 09:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fNyk8YE/wGQJxL9Z4liTo/KJLxIYZlCIVyh29UWiyWs=; b=Kkv
	EJzuU5X57cYghTqV5VdlQRZEiARmWMJHYZFxUhpfKd/a8BML162iRFkEc2valA3IEAtgdqOF+LTGx
	6RBi5aKXRdtgC+MF9o3NPIr+d5paLvZsmHz9+FPebS/yj3sv2m1So0vY7rgBX2piaw+Wi2m8vW16l
	6vag7NjaVJ5ewPMwWfeNEXU73bfwYmWNAViBK8aWLQ6ZIqRgwxu08HuuC00/hXfkH9kfAtOoh7Xni
	u5xRelNyAnCnd9ZoMeUlGqxDOEcYuHY46vTDuLJe1/T00VnS2vrXrAPWQDOrWJbysFdzwyP5J6ydp
	+R+fe8mG1Iohd3+x9buYFKtEx4tVujw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLNRY-0002aS-UQ; Tue, 30 Apr 2019 07:44:48 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLNRR-0002a5-Be
 for kexec@lists.infradead.org; Tue, 30 Apr 2019 07:44:42 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9E9493084249;
 Tue, 30 Apr 2019 07:44:40 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-43.pek2.redhat.com
 [10.72.12.43])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8720016BEC;
 Tue, 30 Apr 2019 07:44:28 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/3 v3] Add kdump support for the SEV enabled guest
Date: Tue, 30 Apr 2019 15:44:18 +0800
Message-Id: <20190430074421.7852-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 30 Apr 2019 07:44:40 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_004441_417036_3399771C 
X-CRM114-Status: GOOD (  12.64  )
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
Cc: Thomas.Lendacky@amd.com, brijesh.singh@amd.com, bhe@redhat.com,
 x86@kernel.org, kexec@lists.infradead.org, mingo@redhat.com, bp@alien8.de,
 hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com,
 akpm@linux-foundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Just like the physical machines support kdump, the virtual machines
also need kdump. When a virtual machine panic, we also need to dump
its memory for analysis.

For the SEV virtual machine, the memory is also encrypted. When SEV
is enabled, the second kernel images(kernel and initrd) are loaded
into the encrypted areas. Unlike the SME, the second kernel images
are loaded into the decrypted areas.

Because of this difference between SME and SEV, we need to properly
map the kexec memory area in order to correctly access it.

Test tools:
makedumpfile[v1.6.5]:
git://git.code.sf.net/p/makedumpfile/code
commit <d222b01e516b> ("Add support for AMD Secure Memory Encryption")
Note: This patch was merged into the devel branch.

crash-7.2.5: https://github.com/crash-utility/crash.git
commit <942d813cda35> ("Fix for the "kmem -i" option on Linux 5.0")

kexec-tools-2.0.19:
git://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools.git
commit <942d813cda35> ("Fix for the kmem '-i' option on Linux 5.0")
http://lists.infradead.org/pipermail/kexec/2019-March/022576.html
Note: The second kernel cann't boot without this patch.

kernel:
git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
commit <f261c4e529da> ("Merge branch 'akpm' (patches from Andrew)")

Test steps:
[1] load the vmlinux and initrd for kdump
# kexec -p /boot/vmlinuz-5.0.0+ --initrd=/boot/initramfs-5.0.0+kdump.img --command-line="BOOT_IMAGE=(hd0,gpt2)/vmlinuz-5.0.0+ ro resume=UUID=126c5e95-fc8b-48d6-a23b-28409198a52e console=ttyS0,115200 earlyprintk=serial irqpoll nr_cpus=1 reset_devices cgroup_disable=memory mce=off numa=off udev.children-max=2 panic=10 rootflags=nofail acpi_no_memhotplug transparent_hugepage=never disable_cpu_apicid=0"

[2] trigger panic
# echo 1 > /proc/sys/kernel/sysrq
# echo c > /proc/sysrq-trigger

[3] check and parse the vmcore
# crash vmlinux /var/crash/127.0.0.1-2019-03-15-05\:03\:42/vmcore

Changes since v1:
1. Modify the patch subject prefixes.
2. Improve patch log: add parentheses at the end of the function names.
3. Fix the multiple confusing checks.
4. Add comment in the arch_kexec_post_alloc_pages().

Changes since v2:
1. Add the explanation to the commit message[Boris' suggestion].
2. Improve the patch log.

Lianbo Jiang (3):
  x86/kexec: Do not map the kexec area as decrypted when SEV is active
  x86/kexec: Set the C-bit in the identity map page table when SEV is
    active
  kdump,proc/vmcore: Enable dumping encrypted memory when SEV was active

 arch/x86/kernel/machine_kexec_64.c | 27 ++++++++++++++++++++++++++-
 fs/proc/vmcore.c                   |  6 +++---
 2 files changed, 29 insertions(+), 4 deletions(-)

-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
