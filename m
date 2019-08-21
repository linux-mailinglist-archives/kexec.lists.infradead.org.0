Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2BF98313
	for <lists+kexec@lfdr.de>; Wed, 21 Aug 2019 20:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kB5YfORfTQTWkkgasK0iu3H1C9RhkYDZS4+IOj7ovHg=; b=FOhlydY/ceL4SF
	gx7wOTILmeCcK3RkrXJI52zZPq7WxFEyDSTQfzYA6LR57PzSC5tnokHB1RaYbL96+I3nKdUrVeCjL
	mSfQaIDvGQVQXSEznnBCQnPYXLR5pfETQ4RuELf15t6xkjC71Pv6CJb5yoFaVnkKjID9NB8PZ4BNI
	14iHwCeXEIhRCJ8tDJtB3gAzBRbD6CcQ3kDgpjjtcSoG2ZHkiTJCOVhQ+tFfiOe0af0BM14P9Xeqx
	GNdf+6MkVZDSRw72AW4o9CmmSmWxeV7p6ugVYMAt//59fiK2bpkPNQwZKXb3xhSA0ZOXwBjsPI1nf
	EP+idXQN22hhAfzZ+H7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VRx-0008Kh-QV; Wed, 21 Aug 2019 18:35:13 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VPA-0004AW-Jj
 for kexec@lists.infradead.org; Wed, 21 Aug 2019 18:32:22 +0000
Received: by mail-qk1-x744.google.com with SMTP id d79so2695779qke.11
 for <kexec@lists.infradead.org>; Wed, 21 Aug 2019 11:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=p2ZmPVW3GUksitLyy9jJ27m49TkI76nwQzxdL+NJyyg=;
 b=J7ncVAC/Ks/EVDWP1J6BghzJOVmI27MTR8joZZ9iGqN0eTRjFtj/eaN0Or61tK1y/4
 cpAOw5K8hLE3U5xetVDyi5wH1tGqXtzvQig9a2h9kkbrHAtcKIGjwURANE/QY+b8pvou
 enG2wH3J21xePJ0Bvbz8TyQP3ccy4TUVnry1I2OhVy+vOCKmvac2ZH+UrNh+P9qPYwT2
 UMFpaqOKsTMyOk2zzKuNIIRuWAHUxsJESpJ5QBAM77U0vMzOpdQFzb17OTpOcKe+muBB
 EB/JFZ9nEpIu9UtWXT3FlFKU7k5VuIWmAx2Ui4GDgJaTUSlEIrYzNQZXiE6ikxkq1vtM
 Hr9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p2ZmPVW3GUksitLyy9jJ27m49TkI76nwQzxdL+NJyyg=;
 b=cgLNz6TchzH97gFKjzqS2lw4fml4s3v5VZLKkuyavLOZ6Tk8WTIznplrOd2htCEUDM
 VUCt+o5ddTqIsyWN4BNsrrF9ifTkjxpdpblbWlsoLUmLN5LqMbMLuQ1uA9a0QZjsEMpe
 NuAKDq3tF9antk8k7Ha//L3h3pVUSGPWDsTaN6nuAHS3mrz2xrBRu/HNnd/pIRF7wFzd
 Pf0lKiQCw9pCU1g9n4x7qsgIEdQsOWK4JKqGzT6GmXb3O2d4S4VjlgFByYD2KzzuywDg
 vIVqXsIYRvEX8NeD/acShmT6oKgh4yypXi2qyOsF3auV+a7t+/fyAEXY0FVbg7TPWySM
 FN7Q==
X-Gm-Message-State: APjAAAXynTpr36Hy9NClQsApTCeDxguEGGxO0YMH3wnETCkvHUhjWcjT
 MqqnH2yOOjz41fc1Q3BAtmh22Q==
X-Google-Smtp-Source: APXvYqw7OKOPFGZGP2ShGpR47tsdJdXKOSIYQ93+AeAvfCBSHBXQT7Xapz16QlTiFuqHRCuJi7i9nA==
X-Received: by 2002:a37:9c0c:: with SMTP id f12mr33218821qke.442.1566412339244; 
 Wed, 21 Aug 2019 11:32:19 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q13sm10443332qkm.120.2019.08.21.11.32.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:32:18 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v3 09/17] arm64, trans_pgd: add trans_pgd_create_empty
Date: Wed, 21 Aug 2019 14:31:56 -0400
Message-Id: <20190821183204.23576-10-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190821183204.23576-1-pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_113220_740661_0AD0801E 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

This functions returns a zeroed trans_pgd using the allocator that is
specified in the info argument.

trans_pgds should be created by using this function.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/trans_pgd.h |  3 +++
 arch/arm64/kernel/hibernate.c      |  6 +++---
 arch/arm64/mm/trans_pgd.c          | 12 ++++++++++++
 3 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/trans_pgd.h b/arch/arm64/include/asm/trans_pgd.h
index e3d022b1b526..26e5a63676b5 100644
--- a/arch/arm64/include/asm/trans_pgd.h
+++ b/arch/arm64/include/asm/trans_pgd.h
@@ -40,6 +40,9 @@ struct trans_pgd_info {
 	unsigned long trans_flags;
 };
 
+/* Create and empty trans_pgd page table */
+int trans_pgd_create_empty(struct trans_pgd_info *info, pgd_t **trans_pgd);
+
 int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
 			  unsigned long end);
 
diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 17426dc8cb54..8c2641a9bb09 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -216,9 +216,9 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	memcpy(page, src_start, length);
 	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
 
-	trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
-	if (!trans_pgd)
-		return -ENOMEM;
+	rc = trans_pgd_create_empty(&trans_info, &trans_pgd);
+	if (rc)
+		return rc;
 
 	rc = trans_pgd_map_page(&trans_info, trans_pgd, page, dst_addr,
 				PAGE_KERNEL_EXEC);
diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
index dbabccd78cc4..ece797aa1841 100644
--- a/arch/arm64/mm/trans_pgd.c
+++ b/arch/arm64/mm/trans_pgd.c
@@ -164,6 +164,18 @@ static int copy_page_tables(pgd_t *dst_pgdp, unsigned long start,
 	return 0;
 }
 
+int trans_pgd_create_empty(struct trans_pgd_info *info, pgd_t **trans_pgd)
+{
+	pgd_t *dst_pgdp = trans_alloc(info);
+
+	if (!dst_pgdp)
+		return -ENOMEM;
+
+	*trans_pgd = dst_pgdp;
+
+	return 0;
+}
+
 int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
 			  unsigned long end)
 {
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
