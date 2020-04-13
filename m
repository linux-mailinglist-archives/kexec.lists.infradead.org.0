Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA651A61CD
	for <lists+kexec@lfdr.de>; Mon, 13 Apr 2020 05:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XnPeu8iQ347iOns1H1CV3U0+qOrQVp/owjKCiOKEoLQ=; b=bmh
	Zf7mmwxKyT81d2WV219I0oNjmfdRMMNYqQI5sym5Di4+IBwZAIEtr6nK0bbz9MKFyd/pSassPqEyG
	KsSmBwRUZKYr3izhz2Z2GSqErV9nUUQ6EVkh7XQnZe+o6Nwz4TtWBH3XKVSHHzKUXn77ZJR87MTpX
	N4IwOT9EzV7hy6Bb4ypRDhyuiz3O5Naanc+qVlBNJhpXhwto+GGHnqequ/ax1tbcfF/9AAty6fyF5
	rS1WNlhqXliHqs6PNAulm5OEcy95dRhVX+bjSOGFrbiNclM77iDNVOGvhEy5cQfm/seOR5W22rJZC
	gTbW/28ScOhgiyxiZdQU5scJyfNKPXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNq3d-0002Cx-WC; Mon, 13 Apr 2020 03:46:50 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNq3b-0002CV-4d
 for kexec@lists.infradead.org; Mon, 13 Apr 2020 03:46:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586749604;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=DCkKWQeLz51yGLbAlBZz4z2Yr9jR7cyyDtAhfw18Vmw=;
 b=hN/P/Ds77j4QPkzFymifgJ4zfIscPIQJxhbuxMsDNF23BXXjpXnLd7zlSNvOH79NercHNt
 zOx11IYcpZ5sJM0Ln3zgF1GBPIZ3ns1x2bRwY8Vn1fqVVT3f4qKkL7byz5E1e9eJLfn85S
 XjG0I8RsgXlhYGJ//Hr/bTubc9Tav9U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-122-575j66PTOXayVgElsrzZgg-1; Sun, 12 Apr 2020 23:46:43 -0400
X-MC-Unique: 575j66PTOXayVgElsrzZgg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2DB7DDB22;
 Mon, 13 Apr 2020 03:46:42 +0000 (UTC)
Received: from mylaptop.redhat.com (ovpn-8-19.pek2.redhat.com [10.72.8.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8DBC75D9C5;
 Mon, 13 Apr 2020 03:46:40 +0000 (UTC)
From: Pingfan Liu <piliu@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH] makedumpfile: clear mem_map if not in pt_loads
Date: Mon, 13 Apr 2020 11:46:38 +0800
Message-Id: <1586749598-1671-1-git-send-email-piliu@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_204647_269595_58BBF932 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

The crashed kernel passes usable RAM info through pt_loads[], but the
current code ignore this, and parse all sections below info->max_mapnr.
Refer to code in get_mm_sparsemem()
  num_section = divideup(info->max_mapnr, PAGES_PER_SECTION());

These ranges can include unwanted memory e.g. reserved-memory for crash
kernel, PMEM for fs-dax. Excluding them by setting mem_maps[section_nr]=NULL.

Signed-off-by: Pingfan Liu <piliu@redhat.com>
---
 elf_info.c     | 12 ++++++++++++
 elf_info.h     |  1 +
 makedumpfile.c |  5 +++++
 3 files changed, 18 insertions(+)

diff --git a/elf_info.c b/elf_info.c
index 7d72742..297c3e4 100644
--- a/elf_info.c
+++ b/elf_info.c
@@ -1302,3 +1302,15 @@ get_max_file_offset(void)
 {
 	return max_file_offset;
 }
+
+int phyaddr_in_pt_loads(unsigned long long phys_start)
+{
+	 struct pt_load_segment *pls;
+
+	for (int i = 0; i < num_pt_loads; i++) {
+		pls = &pt_loads[i];
+		if (phys_start >= pls->phys_start && phys_start < pls->phys_end)
+			return TRUE;
+	}
+	return FALSE;
+}
diff --git a/elf_info.h b/elf_info.h
index 934b608..f5bb07c 100644
--- a/elf_info.h
+++ b/elf_info.h
@@ -90,6 +90,7 @@ void get_eraseinfo(off_t *offset, unsigned long *size);
 void set_eraseinfo(off_t offset, unsigned long size);
 
 off_t get_max_file_offset(void);
+int phyaddr_in_pt_loads(unsigned long long phys_start);
 
 #endif  /* ELF_INFO_H */
 
diff --git a/makedumpfile.c b/makedumpfile.c
index f5860a1..c0fa075 100644
--- a/makedumpfile.c
+++ b/makedumpfile.c
@@ -3556,8 +3556,13 @@ get_mm_sparsemem(void)
 		goto out;
 	}
 	for (section_nr = 0; section_nr < num_section; section_nr++) {
+		unsigned long phys_start;
+
 		pfn_start = section_nr * PAGES_PER_SECTION();
 		pfn_end   = pfn_start + PAGES_PER_SECTION();
+		phys_start = pfn_start << PAGESHIFT();
+		if (!phyaddr_in_pt_loads(phys_start))
+			mem_maps[section_nr] = (unsigned long)NULL;
 		if (info->max_mapnr < pfn_end)
 			pfn_end = info->max_mapnr;
 		dump_mem_map(pfn_start, pfn_end, mem_maps[section_nr], section_nr);
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
