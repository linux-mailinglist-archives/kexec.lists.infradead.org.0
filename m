Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1F115887A
	for <lists+kexec@lfdr.de>; Tue, 11 Feb 2020 04:02:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KanJv+vl74MvCyYGiHTo0Kw3mgMKyh0z7vCLVvgPEhA=; b=Ba/
	lh3cBY25GUpqh6n/ENN7HH68+z01QUK+/QoNM+1D/Ecdy4CXpbkEvF5DlzDXgPIuBEBAaRUNP1QiL
	5FpU0s1832zfu2/8yH11ur8WL/AUhNG5+3aEXXXZ0hJTTZ5jUkZBpaF5lQ+uQ475ipQV3yipYtkiN
	H3NA46j8saKm6j+LMl5JKysnvmhrGTz+NNa3aDTZmCiz1aFVnlB6Y/cWbFnBggbo+blAbEM9WW4FR
	b1CFItTlFBmn6UpvyY4PR83rHTv+V30IULyq/U4SAUrLh99Z8hc6+uppeP6sO4tb+9XksBvs92bNZ
	uNclBkjESKpYRtEVgn7mEq2mogHfrMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Loq-0002ac-Sa; Tue, 11 Feb 2020 03:02:36 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Lok-0002Zf-FI
 for kexec@lists.infradead.org; Tue, 11 Feb 2020 03:02:31 +0000
Received: by mail-pj1-x1041.google.com with SMTP id m13so607518pjb.2
 for <kexec@lists.infradead.org>; Mon, 10 Feb 2020 19:02:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=6B8koftBLrJDRWsxr6z2TFPm4iMsY2o3qs+tDinMff0=;
 b=InBKraSFiqSGyDmus3TCOMGIumhYKcRYHegPQdIcmR2sZKnIVOZezmDgNJes2S+78B
 6XetujltT/fMKLymnlUbwgOhGVz/gQZbTX6yXfwf5zaKcgOYO6Otr+G1PPNTcELsjZWY
 wD8la3Je3I8ej13kvJlodqETmdb3e6L4b6/Aln7c61IHnA8N6b7q77h/78MSypIk+DwM
 bK9RxTd+S9KOwljXwhwEErrWjiHBefR2kw2ahjNMVvRR1VSuWEijRigDAShY2jefHIHo
 TV++8c6XRKiHSv9uxBnUbun1FgEBUq8qVLZx9I4xHTN48Ge88ZoMkcDUwaUR+UZyxiLl
 7KRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6B8koftBLrJDRWsxr6z2TFPm4iMsY2o3qs+tDinMff0=;
 b=VSkdaUeZHt5GdbL+fEOEdjHC/ZfZcFekIYkSfNrWVjVNMUNaKOnO99buwNPec7kVoe
 CKW7iUkB/GdiQoP3iwhFm8BCTXPsP22lP5D+TLPVqop51Mclef1gkt29am97QsRzQtNZ
 2u+f+8afSHRWvFJsgA8kmaNdHUuXx0Ne0PfWFFwc6A2Y21rTF+HOq9qMysYGqA2xrl/z
 dvK97QXYIDbjJTfbWoL22bxDntAuzZHO00dkMzoE+vxthT5ibKHj68CDWYaI7YV8BgtE
 AIZl2AhEYqed6SAOHPHamEJpVhp4AH8ifOZfTunjP2bchmT7lUi9fg8SSlK+kUVufAqA
 /jfw==
X-Gm-Message-State: APjAAAUFcjI9w2MHkWYo0UEsjtx84d4vb34Hv0jxSmv8REsACeKAgHzQ
 Ni4J+y41g6e/HLTZHnZbkQ==
X-Google-Smtp-Source: APXvYqxk/wxKJbVrY6xNhPK0ZmuQcxunZ4TKmL5ApijvUqtr0xxEO8C1JUMioQRBYQEik2hJOYh7Jw==
X-Received: by 2002:a17:902:74c3:: with SMTP id
 f3mr16432519plt.0.1581390147995; 
 Mon, 10 Feb 2020 19:02:27 -0800 (PST)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id m71sm1290633pje.0.2020.02.10.19.02.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Feb 2020 19:02:27 -0800 (PST)
From: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Subject: [PATCH 1/2] powerpc/pseries: group lmb operation and memblock's
Date: Tue, 11 Feb 2020 10:59:41 +0800
Message-Id: <1581389982-5701-1-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_190230_536767_304BBA0C 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michael Ellerman <mpe@ellerman.id.au>, kexec@lists.infradead.org,
 Pingfan Liu <kernelfans@gmail.com>, Paul Mackerras <paulus@samba.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Hari Bathini <hbathini@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

This patch prepares for the incoming patch which swaps the order of KOBJ_
uevent and dt's updating.

It has no functional effect, just groups lmb operation and memblock's in
order to insert dt updating operation easily, and makes it easier to
review.

Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Hari Bathini <hbathini@linux.ibm.com>
To: linuxppc-dev@lists.ozlabs.org
Cc: kexec@lists.infradead.org
---
 arch/powerpc/platforms/pseries/hotplug-memory.c | 26 ++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/arch/powerpc/platforms/pseries/hotplug-memory.c b/arch/powerpc/platforms/pseries/hotplug-memory.c
index c126b94..a3a9353 100644
--- a/arch/powerpc/platforms/pseries/hotplug-memory.c
+++ b/arch/powerpc/platforms/pseries/hotplug-memory.c
@@ -375,7 +375,8 @@ static int dlpar_add_lmb(struct drmem_lmb *);
 static int dlpar_remove_lmb(struct drmem_lmb *lmb)
 {
 	unsigned long block_sz;
-	int rc;
+	phys_addr_t base_addr;
+	int rc, nid;
 
 	if (!lmb_is_removable(lmb))
 		return -EINVAL;
@@ -384,17 +385,19 @@ static int dlpar_remove_lmb(struct drmem_lmb *lmb)
 	if (rc)
 		return rc;
 
+	base_addr = lmb->base_addr;
+	nid = lmb->nid;
 	block_sz = pseries_memory_block_size();
 
-	__remove_memory(lmb->nid, lmb->base_addr, block_sz);
-
-	/* Update memory regions for memory remove */
-	memblock_remove(lmb->base_addr, block_sz);
-
 	invalidate_lmb_associativity_index(lmb);
 	lmb_clear_nid(lmb);
 	lmb->flags &= ~DRCONF_MEM_ASSIGNED;
 
+	__remove_memory(nid, base_addr, block_sz);
+
+	/* Update memory regions for memory remove */
+	memblock_remove(base_addr, block_sz);
+
 	return 0;
 }
 
@@ -661,6 +664,8 @@ static int dlpar_add_lmb(struct drmem_lmb *lmb)
 	}
 
 	lmb_set_nid(lmb);
+	lmb->flags |= DRCONF_MEM_ASSIGNED;
+
 	block_sz = memory_block_size_bytes();
 
 	/* Add the memory */
@@ -672,11 +677,14 @@ static int dlpar_add_lmb(struct drmem_lmb *lmb)
 
 	rc = dlpar_online_lmb(lmb);
 	if (rc) {
-		__remove_memory(lmb->nid, lmb->base_addr, block_sz);
+		int nid = lmb->nid;
+		phys_addr_t base_addr = lmb->base_addr;
+
 		invalidate_lmb_associativity_index(lmb);
 		lmb_clear_nid(lmb);
-	} else {
-		lmb->flags |= DRCONF_MEM_ASSIGNED;
+		lmb->flags &= ~DRCONF_MEM_ASSIGNED;
+
+		__remove_memory(nid, base_addr, block_sz);
 	}
 
 	return rc;
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
