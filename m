Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BECFB129833
	for <lists+kexec@lfdr.de>; Mon, 23 Dec 2019 16:27:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=esy8VnroYa9OSzfuKmv/OnV/ilP/R+O+mGl7FeKTjto=; b=MU9Hu25FyugaLJ
	qa9L9GEYUMePZstgzxXvGx7ntubPMPmXHm7OHa83Pzv4ePFWfdvX/pMogvbCDIrTDL2cTcdI6ZDk9
	4ohAePSyHII2x+tVvVrZtSQsddgDm/iWg/oIKaHSzVNVlLv6JSyOEaOIfCGVnqjzrRqXGAr0fgpUS
	VD7eL6D3q8nyYtncGwqAhLytuVNEIu2rHCZoqy40CV3iOcH1Wdqm+tnUVGlyeQMcCmRzKjgfN9FkI
	OzIXcG3zaWK0rBnxEivcNUTGLJU3i1tvLgX23mpm/+bmSPPBVh7n0DxSrSblJNnN39IAFYC3RDT11
	6eKcyTEDvtZ8hGUU4cGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijPci-0007H5-Tq; Mon, 23 Dec 2019 15:27:56 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijPcL-0006xy-LW; Mon, 23 Dec 2019 15:27:35 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D2057C95DE330A81C437;
 Mon, 23 Dec 2019 23:27:19 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Mon, 23 Dec 2019 23:27:11 +0800
From: Chen Zhou <chenzhou10@huawei.com>
To: <tglx@linutronix.de>, <mingo@redhat.com>, <catalin.marinas@arm.com>,
 <will@kernel.org>, <james.morse@arm.com>, <dyoung@redhat.com>,
 <bhsharma@redhat.com>
Subject: [PATCH v7 0/4] support reserving crashkernel above 4G on arm64 kdump
Date: Mon, 23 Dec 2019 23:23:45 +0800
Message-ID: <20191223152349.180172-1-chenzhou10@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_072733_868144_68B0EC66 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: xiexiuqi@huawei.com, chenzhou10@huawei.com, linux-doc@vger.kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, horms@verge.net.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

This patch series enable reserving crashkernel above 4G in arm64.

There are following issues in arm64 kdump:
1. We use crashkernel=X to reserve crashkernel below 4G, which will fail
when there is no enough low memory.
2. Currently, crashkernel=Y@X can be used to reserve crashkernel above 4G,
in this case, if swiotlb or DMA buffers are required, crash dump kernel
will boot failure because there is no low memory available for allocation.

To solve these issues, introduce crashkernel=X,low to reserve specified
size low memory.
Crashkernel=X tries to reserve memory for the crash dump kernel under
4G. If crashkernel=Y,low is specified simultaneously, reserve spcified
size low memory for crash kdump kernel devices firstly and then reserve
memory above 4G.

When crashkernel is reserved above 4G in memory, that is, crashkernel=X,low
is specified simultaneously, kernel should reserve specified size low memory
for crash dump kernel devices. So there may be two crash kernel regions, one
is below 4G, the other is above 4G.
In order to distinct from the high region and make no effect to the use of
kexec-tools, rename the low region as "Crash kernel (low)", and add DT property
"linux,low-memory-range" to crash dump kernel's dtb to pass the low region.

Besides, we need to modify kexec-tools:
arm64: kdump: add another DT property to crash dump kernel's dtb(see [1])

The previous changes and discussions can be retrieved from:

Changes since [v6]
- Fix build errors reported by kbuild test robot.

Changes since [v5]
- Move reserve_crashkernel_low() into kernel/crash_core.c.
- Delete crashkernel=X,high.
- Modify crashkernel=X,low.
If crashkernel=X,low is specified simultaneously, reserve spcified size low
memory for crash kdump kernel devices firstly and then reserve memory above 4G.
In addition, rename crashk_low_res as "Crash kernel (low)" for arm64, and then
pass to crash dump kernel by DT property "linux,low-memory-range".
- Update Documentation/admin-guide/kdump/kdump.rst.

Changes since [v4]
- Reimplement memblock_cap_memory_ranges for multiple ranges by Mike.

Changes since [v3]
- Add memblock_cap_memory_ranges back for multiple ranges.
- Fix some compiling warnings.

Changes since [v2]
- Split patch "arm64: kdump: support reserving crashkernel above 4G" as
two. Put "move reserve_crashkernel_low() into kexec_core.c" in a separate
patch.

Changes since [v1]:
- Move common reserve_crashkernel_low() code into kernel/kexec_core.c.
- Remove memblock_cap_memory_ranges() i added in v1 and implement that
in fdt_enforce_memory_region().
There are at most two crash kernel regions, for two crash kernel regions
case, we cap the memory range [min(regs[*].start), max(regs[*].end)]
and then remove the memory range in the middle.

[1]: http://lists.infradead.org/pipermail/kexec/2019-August/023569.html
[v1]: https://lkml.org/lkml/2019/4/2/1174
[v2]: https://lkml.org/lkml/2019/4/9/86
[v3]: https://lkml.org/lkml/2019/4/9/306
[v4]: https://lkml.org/lkml/2019/4/15/273
[v5]: https://lkml.org/lkml/2019/5/6/1360
[v6]: https://lkml.org/lkml/2019/8/30/142

Chen Zhou (4):
  x86: kdump: move reserve_crashkernel_low() into crash_core.c
  arm64: kdump: reserve crashkenel above 4G for crash dump kernel
  arm64: kdump: add memory for devices by DT property, low-memory-range
  kdump: update Documentation about crashkernel on arm64

 Documentation/admin-guide/kdump/kdump.rst       | 13 +++-
 Documentation/admin-guide/kernel-parameters.txt | 12 +++-
 arch/arm64/kernel/setup.c                       |  8 ++-
 arch/arm64/mm/init.c                            | 61 ++++++++++++++++-
 arch/x86/kernel/setup.c                         | 62 ++----------------
 include/linux/crash_core.h                      |  3 +
 include/linux/kexec.h                           |  2 -
 kernel/crash_core.c                             | 87 +++++++++++++++++++++++++
 kernel/kexec_core.c                             | 17 -----
 9 files changed, 183 insertions(+), 82 deletions(-)

-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
