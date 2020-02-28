Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5521730A8
	for <lists+kexec@lfdr.de>; Fri, 28 Feb 2020 06:55:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kIQrjly2ehuqulxlmlJZmYvY0E5FgReawARYFrcIVaM=; b=p2r
	EKVJ/E7YUyH/xZdvtksLjAlTLcC+PfAN/j1TvGrxkAciNEqzj5bGUAR//cIW/la+RP30/xw0PLs6I
	/V23mmki7VnBHldrtPQ3iH5A7/hV4zDaWRsW6hDCf242pjECWenLiXS/mQcR1y/9iOTsPlE4rQ3wZ
	f3mmogMGosWPFQfuoNeloRWw06VQfeGNYD7euavBwdbNkoGqtnKgSWMnHpUPJV2c2NH1fq6Y4Uhwt
	Hz7IgGxSREot4m0ltHZNqaWz2cDRsSy8qNI2W3GrR/w031j7fdNWel+WwEtrHkOYsEY6zSQprLKl/
	OFXLmVeJEnvu9VeEVrw9YfS2nc4COhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Ycj-0003cA-KM; Fri, 28 Feb 2020 05:55:45 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Ycg-0003bp-Jo
 for kexec@lists.infradead.org; Fri, 28 Feb 2020 05:55:44 +0000
Received: by mail-pj1-x1042.google.com with SMTP id a16so506876pju.3
 for <kexec@lists.infradead.org>; Thu, 27 Feb 2020 21:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=js3ysuQSDsSYYbfEOGdF/3rYxV/cA5m/4enBvEKdfJc=;
 b=nsDMz9irko9D9uF/HaJP8LL8b3cjxJKMpK/0DBlM2fKtF+Yq5wZRUsIP1vI8ED5Yls
 X+BPlP38eyS78C0M3PWW2elyuIXLZSaxmcO1RqTAYdyVo/eNs6V0WjD0rfXUMgxHUunz
 JBLzBdhbFDs8o6HLeyg5Ah2yCwiFFHVSnG4SXGUMCEmPrejKywXE/uk/ydD+uzE2Suhu
 1dALqwJw/tkBRqGgjqBUz5xcx83Q1T/mINnthdV40DM/pFKG/ItH76kgOcJKkCnoLshY
 HsaX63AjOlO1cfNkUlVzmqaqeqHLvUpeNu/LepoZYPVSQyHoUwl8aaHa3zr+LZMhw1yL
 wH9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=js3ysuQSDsSYYbfEOGdF/3rYxV/cA5m/4enBvEKdfJc=;
 b=SflRtd3WdmlJRqBuU4T5lomTAodUXPMtbuMOyNBX/DCahmbODa44m1CSbq4sNMC6+j
 NvfFXdPvuXcY073e4T4ewyH7up+QcfSn4yTuMeX7NatZM6QODRTCfEwH80m164rJHLjX
 EKw+SdtqkAcU7ninqmk7j3PjWwJ7Nzko6jhuBuVdenb47LtlABOuRGY73Lu/Gt3gARV0
 lOv08fZvoBVT4q6VUZ7fU3+iYgHa0YWtcFV+XJHg9FXG3/3vULrc1tSanJgGF4eoKmJ+
 uS7N//DYnBSUJNFsdkw9ZDXyHAW0l7nm9Pk2OgvmVa8kpMCV69/Rn4SmykFICTtNkbmz
 OHyw==
X-Gm-Message-State: APjAAAXqs0YY62lvsviouHFxOIaMvsC/xxuIYcoyU93eFNokyZOOu8SC
 Y9O3+6zNP6N44Fx1gAQGww==
X-Google-Smtp-Source: APXvYqw9dx4nL+ZTDAodzbq1zP/Airc7sfbRP/FGrPG51Phq6gTqkTbeKdFwbTIJcMIN8EbmOMhdww==
X-Received: by 2002:a17:902:b215:: with SMTP id
 t21mr2504611plr.190.1582869341422; 
 Thu, 27 Feb 2020 21:55:41 -0800 (PST)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id h4sm4350370pgq.20.2020.02.27.21.55.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Feb 2020 21:55:40 -0800 (PST)
From: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Subject: [PATCH 1/3] powerpc/of: split out new_property() for reusing
Date: Fri, 28 Feb 2020 13:53:10 +0800
Message-Id: <1582869192-9284-1-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_215542_654428_C95C0458 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 kexec@lists.infradead.org, Pingfan Liu <kernelfans@gmail.com>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Oliver O'Halloran <oohall@gmail.com>, Dan Williams <dan.j.williams@intel.com>,
 Hari Bathini <hbathini@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Since new_property() is used in several calling sites, splitting it out for
reusing.

To ease the review, although the split out part has coding style issue,
keeping it untouched and fixed in next patch.

Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Hari Bathini <hbathini@linux.ibm.com>
Cc: Aneesh Kumar K.V <aneesh.kumar@linux.ibm.com>
Cc: Oliver O'Halloran <oohall@gmail.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: kexec@lists.infradead.org
---
 arch/powerpc/include/asm/prom.h           |  2 ++
 arch/powerpc/kernel/Makefile              |  2 +-
 arch/powerpc/kernel/of_property.c         | 32 +++++++++++++++++++++++++++++++
 arch/powerpc/mm/drmem.c                   | 26 -------------------------
 arch/powerpc/platforms/pseries/reconfig.c | 26 -------------------------
 5 files changed, 35 insertions(+), 53 deletions(-)
 create mode 100644 arch/powerpc/kernel/of_property.c

diff --git a/arch/powerpc/include/asm/prom.h b/arch/powerpc/include/asm/prom.h
index 94e3fd5..02f7b1b 100644
--- a/arch/powerpc/include/asm/prom.h
+++ b/arch/powerpc/include/asm/prom.h
@@ -90,6 +90,8 @@ struct of_drc_info {
 extern int of_read_drc_info_cell(struct property **prop,
 			const __be32 **curval, struct of_drc_info *data);
 
+extern struct property *new_property(const char *name, const int length,
+		const unsigned char *value, struct property *last);
 
 /*
  * There are two methods for telling firmware what our capabilities are.
diff --git a/arch/powerpc/kernel/Makefile b/arch/powerpc/kernel/Makefile
index 157b014..23375fd 100644
--- a/arch/powerpc/kernel/Makefile
+++ b/arch/powerpc/kernel/Makefile
@@ -47,7 +47,7 @@ obj-y				:= cputable.o ptrace.o syscalls.o \
 				   signal.o sysfs.o cacheinfo.o time.o \
 				   prom.o traps.o setup-common.o \
 				   udbg.o misc.o io.o misc_$(BITS).o \
-				   of_platform.o prom_parse.o
+				   of_platform.o prom_parse.o of_property.o
 obj-$(CONFIG_PPC64)		+= setup_64.o sys_ppc32.o \
 				   signal_64.o ptrace32.o \
 				   paca.o nvram_64.o firmware.o note.o
diff --git a/arch/powerpc/kernel/of_property.c b/arch/powerpc/kernel/of_property.c
new file mode 100644
index 0000000..e56c832
--- /dev/null
+++ b/arch/powerpc/kernel/of_property.c
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <linux/of.h>
+#include <linux/string.h>
+#include <linux/kernel.h>
+#include <linux/slab.h>
+
+struct property *new_property(const char *name, const int length,
+				     const unsigned char *value, struct property *last)
+{
+	struct property *new = kzalloc(sizeof(*new), GFP_KERNEL);
+
+	if (!new)
+		return NULL;
+
+	if (!(new->name = kstrdup(name, GFP_KERNEL)))
+		goto cleanup;
+	if (!(new->value = kmalloc(length + 1, GFP_KERNEL)))
+		goto cleanup;
+
+	memcpy(new->value, value, length);
+	*(((char *)new->value) + length) = 0;
+	new->length = length;
+	new->next = last;
+	return new;
+
+cleanup:
+	kfree(new->name);
+	kfree(new->value);
+	kfree(new);
+	return NULL;
+}
+
diff --git a/arch/powerpc/mm/drmem.c b/arch/powerpc/mm/drmem.c
index 85b088a..888227e 100644
--- a/arch/powerpc/mm/drmem.c
+++ b/arch/powerpc/mm/drmem.c
@@ -99,32 +99,6 @@ static void init_drconf_v2_cell(struct of_drconf_cell_v2 *dr_cell,
 
 extern int test_hotplug;
 
-static struct property *new_property(const char *name, const int length,
-				     const unsigned char *value, struct property *last)
-{
-	struct property *new = kzalloc(sizeof(*new), GFP_KERNEL);
-
-	if (!new)
-		return NULL;
-
-	if (!(new->name = kstrdup(name, GFP_KERNEL)))
-		goto cleanup;
-	if (!(new->value = kmalloc(length + 1, GFP_KERNEL)))
-		goto cleanup;
-
-	memcpy(new->value, value, length);
-	*(((char *)new->value) + length) = 0;
-	new->length = length;
-	new->next = last;
-	return new;
-
-cleanup:
-	kfree(new->name);
-	kfree(new->value);
-	kfree(new);
-	return NULL;
-}
-
 static int drmem_update_dt_v2(struct device_node *memory,
 			      struct property *prop)
 {
diff --git a/arch/powerpc/platforms/pseries/reconfig.c b/arch/powerpc/platforms/pseries/reconfig.c
index 7f7369f..8e5a2ba 100644
--- a/arch/powerpc/platforms/pseries/reconfig.c
+++ b/arch/powerpc/platforms/pseries/reconfig.c
@@ -165,32 +165,6 @@ static char * parse_next_property(char *buf, char *end, char **name, int *length
 	return tmp;
 }
 
-static struct property *new_property(const char *name, const int length,
-				     const unsigned char *value, struct property *last)
-{
-	struct property *new = kzalloc(sizeof(*new), GFP_KERNEL);
-
-	if (!new)
-		return NULL;
-
-	if (!(new->name = kstrdup(name, GFP_KERNEL)))
-		goto cleanup;
-	if (!(new->value = kmalloc(length + 1, GFP_KERNEL)))
-		goto cleanup;
-
-	memcpy(new->value, value, length);
-	*(((char *)new->value) + length) = 0;
-	new->length = length;
-	new->next = last;
-	return new;
-
-cleanup:
-	kfree(new->name);
-	kfree(new->value);
-	kfree(new);
-	return NULL;
-}
-
 static int do_add_node(char *buf, size_t bufsize)
 {
 	char *path, *end, *name;
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
