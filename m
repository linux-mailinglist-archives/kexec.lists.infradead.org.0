Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BA21CA76D
	for <lists+kexec@lfdr.de>; Fri,  8 May 2020 11:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NGbmPWHu1qrbph/vwn/ViHxY97p+ZfAWXZTYtXeK6DQ=; b=Ib9QJ1QNtjA086
	9iOi50FwOdy4SvZSjCyaDCOn/cm+OZ25K+HmQ9PUwTh1Cw+CIH3nE2q9WMsHxzUYyPFGjy+cpFuFR
	EeqxUubq9P6uzz8zoE6iheBBydxlChcuyGGwoqa3vEip6fbzTo1OOyu2Q+SdokE5G8o6jf6mOjfRu
	S1vKyGwKPnq/G/54loCGd4jDD3YGfXqT/P4101/2/ywKZbBeRH1Zvaz80Zl9lwIC5TpvtTfFWCxwI
	VTCdBLLxnVCkg7aficRKAq/Ns9g1aEHbk8jjW14Lr2R4M2iEQBkSFowQfOzrSTyLN+8ACkHGkYOk9
	DmQKwIwXzkTjAXnRzr0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWzZs-0006hs-Nv; Fri, 08 May 2020 09:45:56 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWyab-0004TP-V6
 for kexec@lists.infradead.org; Fri, 08 May 2020 08:42:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588927355;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ouBt4BfusFaa/lv0LTRbmOSgoxSr9cZTrvcQPivP5Jg=;
 b=bsLQ8XoU6hAlYkq6b0N7px89I506ktSjNfE8FrHAKBluPhdv7hZGdzTm2dub7Xiy6EKxjz
 5mdmqoU98rLOM1g4pvCB3Nij3CQZrcmlamVVE+eYpSvkSWs0+odxd7IFPvbUP/DE5MkXBg
 +2EzdwNlomaJeJvlFXvsl0KUshnuWOc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-340-l6nWo52fN4uNSj25Te985g-1; Fri, 08 May 2020 04:42:30 -0400
X-MC-Unique: l6nWo52fN4uNSj25Te985g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B3D84461;
 Fri,  8 May 2020 08:42:28 +0000 (UTC)
Received: from t480s.redhat.com (ovpn-113-181.ams2.redhat.com [10.36.113.181])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C8F425C1B0;
 Fri,  8 May 2020 08:42:22 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/4] mm/memory_hotplug: Interface to add driver-managed
 system ram
Date: Fri,  8 May 2020 10:42:13 +0200
Message-Id: <20200508084217.9160-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_014238_089693_6F87BB13 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Pankaj Gupta <pankaj.gupta.linux@gmail.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Jiang <dave.jiang@intel.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>, Baoquan He <bhe@redhat.com>,
 linux-nvdimm@lists.01.org, Vishal Verma <vishal.l.verma@intel.com>,
 David Hildenbrand <david@redhat.com>, kexec@lists.infradead.org,
 Wei Yang <richard.weiyang@gmail.com>, linux-mm@kvack.org,
 Michal Hocko <mhocko@suse.com>, Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

I did some more testing to v3 and found issues with unloading the kmem
module, followed by reconfiguring the namespace.

kexec (via kexec_load()) can currently not properly handle memory added via
dax/kmem, and will have similar issues with virtio-mem. kexec-tools will
currently add all memory to the fixed-up initial firmware memmap. In case
of dax/kmem, this means that - in contrast to a proper reboot - how that
persistent memory will be used can no longer be configured by the kexec'd
kernel. In case of virtio-mem it will be harmful, because that memory
might contain inaccessible pieces that require coordination with hypervisor
first.

In both cases, we want to let the driver in the kexec'd kernel handle
detecting and adding the memory, like during an ordinary reboot.
Introduce add_memory_driver_managed(). More on the samentics are in patch
#1.

In the future, we might want to make this behavior configurable for
dax/kmem- either by configuring it in the kernel (which would then also
allow to configure kexec_file_load()) or in kexec-tools by also adding
"System RAM (kmem)" memory from /proc/iomem to the fixed-up initial
firmware memmap.

More on the motivation can be found in [1] and [2].

v3 -> v4:
- "device-dax: Don't leak kernel memory to user space after unloading kmem"
-- Added
- "device-dax: Add memory via add_memory_driver_managed()"
-- kstrdup_const() the resource name to be used for added memory
-- Remember if any hotremove failed / we still have memory added to the
   system and conditionally kfree_const().

v2 -> v3:
- Don't use flags for add_memory() and friends, provide
  add_memory_driver_managed() instead.
- Flag memory resources via IORESOURCE_MEM_DRIVER_MANAGED and handle them
  in kexec.
- Name memory resources "System RAM ($DRIVER)", visible via /proc/iomem
- Added more details to the patch descriptions, especially regarding the
  history of /sys/firmware/memmap
- Add a comment to the device-dax change. Dropped Dave's Ack as the

v1 -> v2:
- Don't change the resource name
- Rename the flag to MHP_NO_FIRMWARE_MEMMAP to reflect what it is doing
- Rephrase subjects/descriptions
- Use the flag for dax/kmem

[1] https://lkml.kernel.org/r/20200429160803.109056-1-david@redhat.com
[2] https://lkml.kernel.org/r/20200430102908.10107-1-david@redhat.com


David Hildenbrand (4):
  device-dax: Don't leak kernel memory to user space after unloading
    kmem
  mm/memory_hotplug: Introduce add_memory_driver_managed()
  kexec_file: Don't place kexec images on IORESOURCE_MEM_DRIVER_MANAGED
  device-dax: Add memory via add_memory_driver_managed()

 drivers/dax/dax-private.h      |  1 +
 drivers/dax/kmem.c             | 42 ++++++++++++++++++++---
 include/linux/ioport.h         |  1 +
 include/linux/memory_hotplug.h |  2 ++
 kernel/kexec_file.c            |  5 +++
 mm/memory_hotplug.c            | 62 +++++++++++++++++++++++++++++++---
 6 files changed, 104 insertions(+), 9 deletions(-)

-- 
2.25.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
