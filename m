Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FDED4C18
	for <lists+kexec@lfdr.de>; Sat, 12 Oct 2019 04:22:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gljrLje/6a2GcTZc3TBAwUrTVxPBJSSZ9K7TDGRsc04=; b=avLhQw+ZMd5XRFXFiDh/QipZtU
	YaTT+PwjTBNtyJg2K6YtnnA23mi0guU1yMtxSAjld6ejD6BzG7yRXq8dqi+AU9A/k8hzbh7UeT+4E
	pbH22Rx+f/H/lC5vXyXwhfoXvJBBS/ORk3+piCxBOjFHWfcA0mxOctVC7zRBr6gyQ7k8zf3FJuLSo
	az8udzA9aBTIbUzcGhgo/KUwIf3bRKWgG07QA9pGiLt6pW5usL6o4oDqok7WPehhcg0Oc0S51NrFV
	QUnWS5/bHVHLZWe3DmyMBHlZ2KEmNPQr0imJ3mM141Gv9HTsxGB6lKtn7N6SRDRUSs6YBomUElWv1
	XPTWokmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ72k-0007ce-Qf; Sat, 12 Oct 2019 02:22:06 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ72h-0007bK-9T
 for kexec@lists.infradead.org; Sat, 12 Oct 2019 02:22:04 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D6AF8309DEF0;
 Sat, 12 Oct 2019 02:22:02 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-50.pek2.redhat.com
 [10.72.12.50])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DA6E910013D9;
 Sat, 12 Oct 2019 02:21:56 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/3 v3] x86/kdump: Fix 'kmem -s' reported an invalid
 freepointer when SME was active
Date: Sat, 12 Oct 2019 10:21:38 +0800
Message-Id: <20191012022140.19003-2-lijiang@redhat.com>
In-Reply-To: <20191012022140.19003-1-lijiang@redhat.com>
References: <20191012022140.19003-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Sat, 12 Oct 2019 02:22:03 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_192203_373067_6E588026 
X-CRM114-Status: GOOD (  17.73  )
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, dhowells@redhat.com, mingo@redhat.com, bp@alien8.de,
 ebiederm@xmission.com, hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com,
 vgoyal@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=204793

Kdump kernel will reuse the first 640k region because of some reasons,
for example: the trampline and conventional PC system BIOS region may
require to allocate memory in this area. Obviously, kdump kernel will
also overwrite the first 640k region, therefore, kernel has to copy
the contents of the first 640k area to a backup area, which is done in
purgatory(), because vmcore may need the old memory. When vmcore is
dumped, kdump kernel will read the old memory from the backup area of
the first 640k area.

Basically, the main reason should be clear, kernel does not correctly
handle the first 640k region when SME is active, which causes that
kernel does not properly copy these old memory to the backup area in
purgatory(). Therefore, kdump kernel reads out the incorrect contents
from the backup area when dumping vmcore. Finally, the phenomenon is
as follow:

[root linux]$ crash vmlinux /var/crash/127.0.0.1-2019-09-19-08\:31\:27/vmcore
WARNING: kernel relocated [240MB]: patching 97110 gdb minimal_symbol values

      KERNEL: /var/crash/127.0.0.1-2019-09-19-08:31:27/vmlinux
    DUMPFILE: /var/crash/127.0.0.1-2019-09-19-08:31:27/vmcore  [PARTIAL DUMP]
        CPUS: 128
        DATE: Thu Sep 19 08:31:18 2019
      UPTIME: 00:01:21
LOAD AVERAGE: 0.16, 0.07, 0.02
       TASKS: 1343
    NODENAME: amd-ethanol
     RELEASE: 5.3.0-rc7+
     VERSION: #4 SMP Thu Sep 19 08:14:00 EDT 2019
     MACHINE: x86_64  (2195 Mhz)
      MEMORY: 127.9 GB
       PANIC: "Kernel panic - not syncing: sysrq triggered crash"
         PID: 9789
     COMMAND: "bash"
        TASK: "ffff89711894ae80  [THREAD_INFO: ffff89711894ae80]"
         CPU: 83
       STATE: TASK_RUNNING (PANIC)

crash> kmem -s|grep -i invalid
kmem: dma-kmalloc-512: slab:ffffd77680001c00 invalid freepointer:a6086ac099f0c5a4
kmem: dma-kmalloc-512: slab:ffffd77680001c00 invalid freepointer:a6086ac099f0c5a4
crash>

BTW: I also tried to fix the above problem in purgatory(), but there
are too many restricts in purgatory() context, for example: i can't
allocate new memory to create the identity mapping page table for SME
situation.

Currently, there are two places where the first 640k area is needed,
the first one is in the find_trampoline_placement(), another one is
in the reserve_real_mode(), and their content doesn't matter. To avoid
the above error, when the crashkernel kernel command line option is
specified, lets reserve the remain low 1MiB memory(after reserving
real mode memroy) so that the allocated memory does not fall into the
low 1MiB area, which makes us not to copy the first 640k content to a
backup region in purgatory().

In addition, also need to clean all the code related to the backup
region later.

Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
---
 arch/x86/realmode/init.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/x86/realmode/init.c b/arch/x86/realmode/init.c
index 7dce39c8c034..bf4c8ffc5ed9 100644
--- a/arch/x86/realmode/init.c
+++ b/arch/x86/realmode/init.c
@@ -34,6 +34,17 @@ void __init reserve_real_mode(void)
 
 	memblock_reserve(mem, size);
 	set_real_mode_mem(mem);
+
+#ifdef CONFIG_KEXEC_CORE
+	/*
+	 * When the crashkernel option is specified, only use the low
+	 * 1MiB for the real mode trampoline.
+	 */
+	if (strstr(boot_command_line, "crashkernel=")) {
+		memblock_reserve(0, SZ_1M);
+		pr_info("Reserving low 1MiB of memory for crashkernel\n");
+	}
+#endif /* CONFIG_KEXEC_CORE */
 }
 
 static void __init setup_real_mode(void)
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
