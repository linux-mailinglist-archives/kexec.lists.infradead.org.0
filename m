Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85432A6EC6
	for <lists+kexec@lfdr.de>; Tue,  3 Sep 2019 18:29:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNCiYvnrqWb3hYwZ+GhGevSR0aOrpoWo1R9MPoL6Je4=; b=ZK5xq9gydrwr7+
	lZX4BA8Ejpw7keQUvUWWeBUCRIYgaTfWj2qJQf94h37CqWlZtembbjTNo41aTXB0GKKi6DnoVRDxz
	cQRlSjRuJwhbnpdF+dQ6YvD69TrHQGNqkxi0mD1mEkbomJUOTMVZBDYNQtTCwokxcvTwlNIMtrzVy
	kpyAZKMtVk96Q5wHsPORXbgpM/+fcWrlKHTRJickdDXzviTOAecIOlxXIHdA6pBV8+JDBOm9m0P9Y
	C2mLmBw7Pqw45rkWiNzF9aGOoIzFL7Pu7tikSPHkQ/0j12F41Ovs7sY3PRq9swHZS91tgV2hGZrKb
	opyEKxxvdStw7typpWbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5BgH-0001Cb-7I; Tue, 03 Sep 2019 16:29:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5BgD-0001Bv-2X
 for kexec@lists.infradead.org; Tue, 03 Sep 2019 16:29:18 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E06EC238C5;
 Tue,  3 Sep 2019 16:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567528156;
 bh=SMG6crDeDLKZ8Wa1i6tr98xOE7QNGjkD2lNR624+nXQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=F1NDXQEQLKGTL35X0VYSQ/VSAVEqVTs491ZtuNKKiBCZ+YNn/MGD+GtW5JekTlscZ
 D6+rNSyAGxryq1b+fNmBMgyVS9EJXu1rV1Ae85tNqcNHcY59f1QYNp6HBgy4SLD4sV
 oDIwryH/4QUFv1273WB8oq/N13MCkpTmD7KIidBY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 142/167] resource: Include resource end in
 walk_*() interfaces
Date: Tue,  3 Sep 2019 12:24:54 -0400
Message-Id: <20190903162519.7136-142-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903162519.7136-1-sashal@kernel.org>
References: <20190903162519.7136-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_092917_160137_9AD988E0 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, Tom Lendacky <thomas.lendacky@amd.com>,
 Brijesh Singh <brijesh.singh@amd.com>, Lianbo Jiang <lijiang@redhat.com>,
 bhe@redhat.com, Takashi Iwai <tiwai@suse.de>, x86-ml <x86@kernel.org>,
 kexec@lists.infradead.org, mingo@redhat.com,
 Thomas Gleixner <tglx@linutronix.de>,
 Yaowei Bai <baiyaowei@cmss.chinamobile.com>, "H . Peter Anvin" <hpa@zytor.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Morton <akpm@linux-foundation.org>,
 Borislav Petkov <bp@suse.de>, dyoung@redhat.com,
 Dan Williams <dan.j.williams@intel.com>, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Bjorn Helgaas <bhelgaas@google.com>

[ Upstream commit a98959fdbda1849a01b2150bb635ed559ec06700 ]

find_next_iomem_res() finds an iomem resource that covers part of a range
described by "start, end".  All callers expect that range to be inclusive,
i.e., both start and end are included, but find_next_iomem_res() doesn't
handle the end address correctly.

If it finds an iomem resource that contains exactly the end address, it
skips it, e.g., if "start, end" is [0x0-0x10000] and there happens to be an
iomem resource [mem 0x10000-0x10000] (the single byte at 0x10000), we skip
it:

  find_next_iomem_res(...)
  {
    start = 0x0;
    end = 0x10000;
    for (p = next_resource(...)) {
      # p->start = 0x10000;
      # p->end = 0x10000;
      # we *should* return this resource, but this condition is false:
      if ((p->end >= start) && (p->start < end))
        break;

Adjust find_next_iomem_res() so it allows a resource that includes the
single byte at the end of the range.  This is a corner case that we
probably don't see in practice.

Fixes: 58c1b5b07907 ("[PATCH] memory hotadd fixes: find_next_system_ram catch range fix")
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Borislav Petkov <bp@suse.de>
CC: Andrew Morton <akpm@linux-foundation.org>
CC: Brijesh Singh <brijesh.singh@amd.com>
CC: Dan Williams <dan.j.williams@intel.com>
CC: H. Peter Anvin <hpa@zytor.com>
CC: Lianbo Jiang <lijiang@redhat.com>
CC: Takashi Iwai <tiwai@suse.de>
CC: Thomas Gleixner <tglx@linutronix.de>
CC: Tom Lendacky <thomas.lendacky@amd.com>
CC: Vivek Goyal <vgoyal@redhat.com>
CC: Yaowei Bai <baiyaowei@cmss.chinamobile.com>
CC: bhe@redhat.com
CC: dan.j.williams@intel.com
CC: dyoung@redhat.com
CC: kexec@lists.infradead.org
CC: mingo@redhat.com
CC: x86-ml <x86@kernel.org>
Link: http://lkml.kernel.org/r/153805812254.1157.16736368485811773752.stgit@bhelgaas-glaptop.roam.corp.google.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 kernel/resource.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/kernel/resource.c b/kernel/resource.c
index 30e1bc68503b5..155ec873ea4d1 100644
--- a/kernel/resource.c
+++ b/kernel/resource.c
@@ -319,7 +319,7 @@ int release_resource(struct resource *old)
 EXPORT_SYMBOL(release_resource);
 
 /*
- * Finds the lowest iomem resource existing within [res->start.res->end).
+ * Finds the lowest iomem resource existing within [res->start..res->end].
  * The caller must specify res->start, res->end, res->flags, and optionally
  * desc.  If found, returns 0, res is overwritten, if not found, returns -1.
  * This function walks the whole tree and not just first level children until
@@ -352,7 +352,7 @@ static int find_next_iomem_res(struct resource *res, unsigned long desc,
 			p = NULL;
 			break;
 		}
-		if ((p->end >= start) && (p->start < end))
+		if ((p->end >= start) && (p->start <= end))
 			break;
 	}
 
-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
