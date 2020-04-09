Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 787BD1A2D77
	for <lists+kexec@lfdr.de>; Thu,  9 Apr 2020 03:59:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=u0+Omz/hA/FUFRADeBCsHS8ELEdnVHLkVwRJTTACSls=; b=tSu
	/ISDrFwu2TW90501/Xyve2kTOxv/Kin/CFs8oxaxjyG/HEccx9KoOfa5vYfyUg5vC3iUd0EIBsMN7
	0i26FCnvhUwgt/ankBJ86biMLCmefsTQ9O3l0BeIkEtuTsxikzGd9yneKsbnYWcYszg+NjG9PZvFs
	cfc5x06M6MuqIbo6LUgJe+7xBKprM6Ptg/9ivoIeFwVH6FeXF1yku4c57vxLKVEoW38V3skXrVpGr
	fyFyz7c4OrHud1OwKWePt9Mfx3Ujt/i964LN/TDTFO3FnituGRQOdvkIeIMi+1fangEeC14he0hKl
	hWtSLlopc5Futy2NKk79WGh8igHU1TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMMTR-0005yY-1m; Thu, 09 Apr 2020 01:59:21 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMMTN-0005xu-Rq
 for kexec@lists.infradead.org; Thu, 09 Apr 2020 01:59:19 +0000
Received: by mail-pl1-x641.google.com with SMTP id d24so3252976pll.8
 for <kexec@lists.infradead.org>; Wed, 08 Apr 2020 18:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=pHHeO3C2EEknzZuTDSUmQQTL7mKzoEOghQeiMw8EiaE=;
 b=pM3IoEWXLXsOHp/DesUtxf+KuLOnVMI4Ah/oVvgVKIO5mOzEOGGNmtwoDqsWN2k/NS
 lseLuGfhdcMuDljiCO2R29LVBcM6w5GDNv/z/fWZr4892g+SiPpUtiHMPiQDheCuSdCt
 O3Nf1dk97doUAxbq073A6IcwVk5/MjwAloArdM7+adDr5sg+q8tINy/lR33yGxZyag+R
 Fe1WNciLDInkSlUqVBkh+/YXvgwK+xsXGCjg7IUzSQIFJ7yVG7d/0GuFJXkef6q6fh+n
 ztsQwOXeZmttWARtDyMi29lfEIH1bKxJMv1mR4kDcmUnpsR6djbkrQ3/Ymz3oEIDyLx+
 x13w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pHHeO3C2EEknzZuTDSUmQQTL7mKzoEOghQeiMw8EiaE=;
 b=K5UA2zlci0sQVRuTuHUqqbhM8ZFpXqAgvnAc+o8HULcH8qfiBf46drik11mCBDA1ec
 44dyuhCKM/QtfuFjRalG4cvOtZ8GaVrwE9DmeZ+BqDGAPQSF4bCRu1BtlSlLRARKH6+O
 Nr9kt2i6As1jTXS5XqTzXkQo/TRnBv2XxUl48YhMeDWP4g8XXl7O9h2QmwxQknbfs3bp
 fug1JYEePtRc0VCjBUnaL+KGulJ8RnsLWznU/B1BBxRTu1VW39LJGYfbeLCc89OPhnud
 KjVW/4qXxtsGlL6/QklhqDeuuYH0w3SFerI4/kohkjiaYvHhTpdF/T2NY25dYTYSIR5U
 zD7w==
X-Gm-Message-State: AGi0PuaPBxz5Ijf+XFNtGoGUq1KiWjOsL072shSQy89X5k/7TTaCwY70
 lSzRKXrp3c3tNUyQEM4SVw==
X-Google-Smtp-Source: APiQypKcLikeRBtEMrcQWrlbgFG9m7hN4PXtQ0JDaRdlKyy55/Gez/Y1AaPlsXgigthtA9eVbGFEbA==
X-Received: by 2002:a17:902:bd4c:: with SMTP id
 b12mr10238556plx.41.1586397556260; 
 Wed, 08 Apr 2020 18:59:16 -0700 (PDT)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id w27sm17822530pfq.211.2020.04.08.18.59.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Apr 2020 18:59:15 -0700 (PDT)
From: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Subject: [PATCHv2 1/2] powerpc/pseries: group lmb operation and memblock's
Date: Thu,  9 Apr 2020 09:56:50 +0800
Message-Id: <1586397411-24259-1-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_185917_921995_A0208180 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michael Ellerman <mpe@ellerman.id.au>, Libor Pechacek <lpechacek@suse.cz>,
 Pingfan Liu <kernelfans@gmail.com>, kexec@lists.infradead.org,
 Paul Mackerras <paulus@samba.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Leonardo Bras <leonardo@linux.ibm.com>,
 Nathan Fontenot <nfont@linux.vnet.ibm.com>,
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
Cc: Leonardo Bras <leonardo@linux.ibm.com>
Cc: Libor Pechacek <lpechacek@suse.cz>
Cc: Nathan Fontenot <nfont@linux.vnet.ibm.com>
To: linuxppc-dev@lists.ozlabs.org
Cc: kexec@lists.infradead.org
---
 arch/powerpc/platforms/pseries/hotplug-memory.c | 26 ++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/arch/powerpc/platforms/pseries/hotplug-memory.c b/arch/powerpc/platforms/pseries/hotplug-memory.c
index b2cde17..4bd9004 100644
--- a/arch/powerpc/platforms/pseries/hotplug-memory.c
+++ b/arch/powerpc/platforms/pseries/hotplug-memory.c
@@ -377,7 +377,8 @@ static int dlpar_add_lmb(struct drmem_lmb *);
 static int dlpar_remove_lmb(struct drmem_lmb *lmb)
 {
 	unsigned long block_sz;
-	int rc;
+	phys_addr_t base_addr;
+	int rc, nid;
 
 	if (!lmb_is_removable(lmb))
 		return -EINVAL;
@@ -386,17 +387,19 @@ static int dlpar_remove_lmb(struct drmem_lmb *lmb)
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
 
@@ -663,6 +666,8 @@ static int dlpar_add_lmb(struct drmem_lmb *lmb)
 	}
 
 	lmb_set_nid(lmb);
+	lmb->flags |= DRCONF_MEM_ASSIGNED;
+
 	block_sz = memory_block_size_bytes();
 
 	/* Add the memory */
@@ -674,11 +679,14 @@ static int dlpar_add_lmb(struct drmem_lmb *lmb)
 
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
