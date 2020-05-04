Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDAC1C469B
	for <lists+kexec@lfdr.de>; Mon,  4 May 2020 21:03:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xDidKn/wMabMfPSuRA8Omz18raex1lmCPFw6u5w6WVI=; b=SKjxg/NPQX5TGm
	uDI43qrgQg4elO7RmPR9hrhPibbihynHNhykdXpNaC7GoMslwBdBuajhWhC1ybtSPrSqLOS3T2wTA
	hmnIrjRBCPx3RQxKoHy5OWp/luX1bjmu4Z/6XpBdNOdtcwGcycKW5ygToNFR2jgjCJD7iBY+T8UC1
	/zh1GMaHdLwZCoDnsSmC4JGqCR8fBp+gTj3s/yrgtaUidxIGGzmT+4rX6Fxp9oF9r7C/xEVCWQP+j
	W4D0JAqhDjw4ohTf0XP4lXam3FTH1lT7Vwm1/fwYaCsi5/kxD3ehyqyLqQB1yb+wLV6PZsmKV1bMw
	pSvc+UscBECtdRTUCSHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVgMu-0000Jx-Q8; Mon, 04 May 2020 19:03:08 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVgMo-0000DO-S6
 for kexec@lists.infradead.org; Mon, 04 May 2020 19:03:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588618981;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VWGsgsBT9IcIoK3tsJvtcUFAcT5JE1pgJJwKU1y5cyQ=;
 b=QdYuwAE0GIgtl85WfVl1UGjxQXso0hzjxhsZvklQ4UhPLw1eZKuocoDASu13urSlIYlPoT
 nOhX+qrLoA2VFndMcxYkrv4o3nR5meaPRyK2HKZHifDYA2wSCcBXfq4KpolMSjvbqLvP88
 RrA7cAGxfNqRZ9xdyjxkumuT3bpOUo0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-479-n250Z6kGNcGSWT8ZWKcleg-1; Mon, 04 May 2020 15:02:57 -0400
X-MC-Unique: n250Z6kGNcGSWT8ZWKcleg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A6A87462;
 Mon,  4 May 2020 19:02:55 +0000 (UTC)
Received: from t480s.redhat.com (ovpn-114-235.ams2.redhat.com [10.36.114.235])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 83BC4385;
 Mon,  4 May 2020 19:02:52 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] kexec_file: Don't place kexec images on
 IORESOURCE_MEM_DRIVER_MANAGED
Date: Mon,  4 May 2020 21:02:26 +0200
Message-Id: <20200504190227.18269-3-david@redhat.com>
In-Reply-To: <20200504190227.18269-1-david@redhat.com>
References: <20200504190227.18269-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_120303_002465_72BAEADB 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Pankaj Gupta <pankaj.gupta.linux@gmail.com>, Michal Hocko <mhocko@suse.com>,
 Dave Jiang <dave.jiang@intel.com>, Pavel Tatashin <pasha.tatashin@soleen.com>,
 Baoquan He <bhe@redhat.com>, linux-nvdimm@lists.01.org,
 Vishal Verma <vishal.l.verma@intel.com>, David Hildenbrand <david@redhat.com>,
 kexec@lists.infradead.org, Wei Yang <richard.weiyang@gmail.com>,
 linux-mm@kvack.org, Dave Hansen <dave.hansen@linux.intel.com>,
 Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Memory flagged with IORESOURCE_MEM_DRIVER_MANAGED is special - it won't be
part of the initial memmap of the kexec kernel and not all memory might be
accessible. Don't place any kexec images onto it.

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Pankaj Gupta <pankaj.gupta.linux@gmail.com>
Cc: Wei Yang <richard.weiyang@gmail.com>
Cc: Baoquan He <bhe@redhat.com>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Eric Biederman <ebiederm@xmission.com>
Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 kernel/kexec_file.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
index faa74d5f6941..bb05fd52de85 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -540,6 +540,11 @@ static int locate_mem_hole_callback(struct resource *res, void *arg)
 	unsigned long sz = end - start + 1;
 
 	/* Returning 0 will take to next memory range */
+
+	/* Don't use memory that will be detected and handled by a driver. */
+	if (res->flags & IORESOURCE_MEM_DRIVER_MANAGED)
+		return 0;
+
 	if (sz < kbuf->memsz)
 		return 0;
 
-- 
2.25.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
