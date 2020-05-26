Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9721E192C
	for <lists+kexec@lfdr.de>; Tue, 26 May 2020 03:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1N8c9sve7tCmehkZiGkaXvRmVcVAc3JfxqiOR22FrY=; b=lRAVeRx1uLg4mV
	s7NKSF8S6hJhZsdj/s0NH1Aoq0IL99fRuBKT8aZgbuzTY8Qny4zcTaAheWESZO7VEEp8/d61Oa9x3
	zdxQR3M9iwCEJwSs280IPKquCphTEMOANCZVqoWzDwSJGuKi0lE6YfYfT0t+YwQNq1A3uFBCHS15n
	U5nqGcPQ2U4kE8A2UAPTtiEb4omgEAp1dg8il9BoW+lz9/OBiTOwMDJWYKOJzYcC8r2vwIMZ4RKJw
	SN2sfPauJMH0hLWgldyZrZfBP8HlCfEzFUmbk05vapjAcbW7sIY619tYllaML2Dlnau3Jldrp/ac2
	HXA+kBm8MEwAC3UM2XDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdOcY-0005g0-DG; Tue, 26 May 2020 01:43:10 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdOcU-0005es-Pi
 for kexec@lists.infradead.org; Tue, 26 May 2020 01:43:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590457385;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=90A2V+s9G7+5U5tOSG/V9yeg3CjImgO19y8K0xgH3vo=;
 b=QY3KbuyGMGWpRMBweRRt6beiAOy7l7pzwQLxQ1ah9zm0tId2IPkSWT1hOQl2wx+A5hiWQh
 OD0yO2qBZ4TEjxKVojFnoFbhOj9t2B5rWT557wtHo8l96Md9zk7h5qWE2FcAQDDew8h2me
 aG0Zswo71N9FNQmP+cH3sshFdf8dCwo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-272-UgCT4IApOH-CVovWkXx76g-1; Mon, 25 May 2020 21:42:50 -0400
X-MC-Unique: UgCT4IApOH-CVovWkXx76g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C5E8107ACCD;
 Tue, 26 May 2020 01:42:48 +0000 (UTC)
Received: from localhost (ovpn-12-31.pek2.redhat.com [10.72.12.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0850879C3E;
 Tue, 26 May 2020 01:42:44 +0000 (UTC)
Date: Tue, 26 May 2020 09:42:42 +0800
From: Baoquan He <bhe@redhat.com>
To: Chen Zhou <chenzhou10@huawei.com>
Subject: Re: [PATCH v8 0/5] support reserving crashkernel above 4G on arm64
 kdump
Message-ID: <20200526014242.GF20045@MiWiFi-R3L-srv>
References: <20200521093805.64398-1-chenzhou10@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521093805.64398-1-chenzhou10@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_184306_911614_4F4009D2 
X-CRM114-Status: GOOD (  22.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: horms@verge.net.au, John.p.donnelly@oracle.com, arnd@arndb.de,
 will@kernel.org, devicetree@vger.kernel.org, catalin.marinas@arm.com,
 linux-doc@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mingo@redhat.com,
 guohanjun@huawei.com, tglx@linutronix.de, pkushwaha@marvell.com,
 dyoung@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 05/21/20 at 05:38pm, Chen Zhou wrote:
> This patch series enable reserving crashkernel above 4G in arm64.
> 
> There are following issues in arm64 kdump:
> 1. We use crashkernel=X to reserve crashkernel below 4G, which will fail
> when there is no enough low memory.
> 2. Currently, crashkernel=Y@X can be used to reserve crashkernel above 4G,
> in this case, if swiotlb or DMA buffers are required, crash dump kernel
> will boot failure because there is no low memory available for allocation.
> 
> To solve these issues, introduce crashkernel=X,low to reserve specified
> size low memory.
> Crashkernel=X tries to reserve memory for the crash dump kernel under
> 4G. If crashkernel=Y,low is specified simultaneously, reserve spcified
> size low memory for crash kdump kernel devices firstly and then reserve
> memory above 4G.
> 
> When crashkernel is reserved above 4G in memory, that is, crashkernel=X,low
> is specified simultaneously, kernel should reserve specified size low memory
> for crash dump kernel devices. So there may be two crash kernel regions, one
> is below 4G, the other is above 4G.
> In order to distinct from the high region and make no effect to the use of
> kexec-tools, rename the low region as "Crash kernel (low)", and add DT property
> "linux,low-memory-range" to crash dump kernel's dtb to pass the low region.
> 
> Besides, we need to modify kexec-tools:
> arm64: kdump: add another DT property to crash dump kernel's dtb(see [1])
> 
> The previous changes and discussions can be retrieved from:
> 
> Changes since [v7]
> - Move x86 CRASH_ALIGN to 2M
> Suggested by Dave and do some test, move x86 CRASH_ALIGN to 2M.

OK, moving x86 CRASH_ALIGN to 2M is suggested by Dave. Because
CONFIG_PHYSICAL_ALIGN can be selected from 2M to 16M. So 2M seems good.
But, anyway, we should tell the reason why it need be changed in commit
log.


arch/x86/Kconfig:
config PHYSICAL_ALIGN
        hex "Alignment value to which kernel should be aligned"
        default "0x200000"
        range 0x2000 0x1000000 if X86_32
        range 0x200000 0x1000000 if X86_64

> - Update Documentation/devicetree/bindings/chosen.txt 
> Add corresponding documentation to Documentation/devicetree/bindings/chosen.txt suggested by Arnd.
> - Add Tested-by from Jhon and pk
> 
> Changes since [v6]
> - Fix build errors reported by kbuild test robot.
> 
> Changes since [v5]
> - Move reserve_crashkernel_low() into kernel/crash_core.c.
> - Delete crashkernel=X,high.

And the crashkernel=X,high being deleted need be told too. Otherwise
people reading the commit have to check why themselves. I didn't follow
the old version, can't see why ,high can't be specified explicitly.

> - Modify crashkernel=X,low.
> If crashkernel=X,low is specified simultaneously, reserve spcified size low
> memory for crash kdump kernel devices firstly and then reserve memory above 4G.
> In addition, rename crashk_low_res as "Crash kernel (low)" for arm64, and then
> pass to crash dump kernel by DT property "linux,low-memory-range".
> - Update Documentation/admin-guide/kdump/kdump.rst.
> 
> Changes since [v4]
> - Reimplement memblock_cap_memory_ranges for multiple ranges by Mike.
> 
> Changes since [v3]
> - Add memblock_cap_memory_ranges back for multiple ranges.
> - Fix some compiling warnings.
> 
> Changes since [v2]
> - Split patch "arm64: kdump: support reserving crashkernel above 4G" as
> two. Put "move reserve_crashkernel_low() into kexec_core.c" in a separate
> patch.
> 
> Changes since [v1]:
> - Move common reserve_crashkernel_low() code into kernel/kexec_core.c.
> - Remove memblock_cap_memory_ranges() i added in v1 and implement that
> in fdt_enforce_memory_region().
> There are at most two crash kernel regions, for two crash kernel regions
> case, we cap the memory range [min(regs[*].start), max(regs[*].end)]
> and then remove the memory range in the middle.
> 
> [1]: http://lists.infradead.org/pipermail/kexec/2020-May/025128.html
> [v1]: https://lkml.org/lkml/2019/4/2/1174
> [v2]: https://lkml.org/lkml/2019/4/9/86
> [v3]: https://lkml.org/lkml/2019/4/9/306
> [v4]: https://lkml.org/lkml/2019/4/15/273
> [v5]: https://lkml.org/lkml/2019/5/6/1360
> [v6]: https://lkml.org/lkml/2019/8/30/142
> [v7]: https://lkml.org/lkml/2019/12/23/411
> 
> Chen Zhou (5):
>   x86: kdump: move reserve_crashkernel_low() into crash_core.c
>   arm64: kdump: reserve crashkenel above 4G for crash dump kernel
>   arm64: kdump: add memory for devices by DT property, low-memory-range
>   kdump: update Documentation about crashkernel on arm64
>   dt-bindings: chosen: Document linux,low-memory-range for arm64 kdump
> 
>  Documentation/admin-guide/kdump/kdump.rst     | 13 ++-
>  .../admin-guide/kernel-parameters.txt         | 12 ++-
>  Documentation/devicetree/bindings/chosen.txt  | 25 ++++++
>  arch/arm64/kernel/setup.c                     |  8 +-
>  arch/arm64/mm/init.c                          | 61 ++++++++++++-
>  arch/x86/kernel/setup.c                       | 66 ++------------
>  include/linux/crash_core.h                    |  3 +
>  include/linux/kexec.h                         |  2 -
>  kernel/crash_core.c                           | 85 +++++++++++++++++++
>  kernel/kexec_core.c                           | 17 ----
>  10 files changed, 208 insertions(+), 84 deletions(-)
> 
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
