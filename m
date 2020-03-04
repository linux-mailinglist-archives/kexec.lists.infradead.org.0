Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8BF178CCE
	for <lists+kexec@lfdr.de>; Wed,  4 Mar 2020 09:50:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rayxREVhOoWN7medbemDNKb2bb9wSYqAKIPr+N3QpBU=; b=tOFBDQKW0kRzh7QpU4qSmg/u/t
	7kw1R2ToZrnQ8yKKuZJSzDJcJ3iLxZWxQJjhUwO7c1y0SZzEXrxHQ9/4YNk87mDABFAdZd7G0SXJl
	9a8HnMLlaUos09htALOj0z3jHnGQSaWB8EvJTQABCMF8yjtI/qu6+OWHg/I61W/g+c3JJ6fHU9p5Z
	+2l4nuWeJIdsmlT3s5n0YEVci3Zfen4uYeGM2KJPeE6/tY+GFYsgwzztm5JLwFQyQm/FiVTNRiFoI
	jQ82k85eMUbT0JN05+Xha3RCq2HG4eS8Jqn+a8tC4EEqqh3oIpMuGnxTHUb52UJoyj++jFF4BPGXj
	UWTZYzkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9PjV-0004hL-SF; Wed, 04 Mar 2020 08:50:25 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9PjR-0004gI-B1
 for kexec@lists.infradead.org; Wed, 04 Mar 2020 08:50:22 +0000
Received: by mail-pj1-x1044.google.com with SMTP id o21so800680pjs.0
 for <kexec@lists.infradead.org>; Wed, 04 Mar 2020 00:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PbAG5DVp5Gwe/RZZ9j0NJf7u8QaXPmkMnI7g6z3JMC8=;
 b=HLHhE6NC/N2Num6RVigdOSImGbpk3nmwnQlk2QXjsRlmsQbb7rVGbhzCI79qMc4DOQ
 rglDWly5IB+23fcbexPX5ZL/YTlmfbbs0sQSBT3OtGGzbht8FSMM/0N/jKJBz9IR6Mft
 QZiGG/6CHHCAh8aYaS72EewgvnynAyu5BPYZDafkeOuc+QMZS0/LtA1iOQ6YeJwVlAHB
 +TiQ9oCTYHs/jq9NXolGDxQS6ceNp8BSNoKnxWJ/fmMznvgIF+RHwT80CAOmxw9UzcdG
 kdZXUjK3rCYnuVdHEIxSa3jEVbJoYDLQiBU3aS/swGU618NlhmvsGn1+N1/4xCKFStsW
 LVcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=PbAG5DVp5Gwe/RZZ9j0NJf7u8QaXPmkMnI7g6z3JMC8=;
 b=BrLe+0yuyJGUeFpJGHFhaTRqYeso4M5RmYM4wisVOX7iVFOfVMKDuvHeX2tzvy6q4U
 2/qyLNKUzx0JSly3bqjX443rFb0CNjvf3dLXET3zr1BQuiW6OaxA0ZfjbCtsBw4TNhNg
 c1gQ3+32l4/1OZwHKpjRVgTsPG/hBkCDC1ybM3EqitTLuQinZaoaurP75HylAx7fpAOE
 aCxfLX8VWQYofbU2jXum1eQjkagEzdQPSbXsEIIp65I5c7N0mt40istknP3hdJ7t59fD
 5snelvzKfFxsmA8OcAMOKX2HIdvyoQVkSebIBVmai05IrJ5JgwmywgvxLSr3zg2WjpKV
 t4Qw==
X-Gm-Message-State: ANhLgQ3wdzdi/B/h6IpaUWAmL8aa90wGBrr3M1Z0HNCTMaegceAXgbTB
 8zBCIswCTuDLUf6E0bMhjw==
X-Google-Smtp-Source: ADFU+vv8xfB2TdqzoYxkWVhmod8311VaLoqVkmOG18qZwQFEIHdrRlKPnLs8enDR1iEXS04WBJve/A==
X-Received: by 2002:a17:902:14d:: with SMTP id
 71mr2053516plb.162.1583311820610; 
 Wed, 04 Mar 2020 00:50:20 -0800 (PST)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id v123sm463085pfb.85.2020.03.04.00.50.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Mar 2020 00:50:20 -0800 (PST)
From: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Subject: [PATCHv3 1/2] powerpc/of: split out new_property() for reusing
Date: Wed,  4 Mar 2020 16:47:29 +0800
Message-Id: <1583311651-29310-2-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
In-Reply-To: <1583311651-29310-1-git-send-email-kernelfans@gmail.com>
References: <1582882895-3142-1-git-send-email-kernelfans@gmail.com>
 <1583311651-29310-1-git-send-email-kernelfans@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_005021_379668_4608834C 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Andrew Donnellan <ajd@linux.ibm.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, kexec@lists.infradead.org,
 Pingfan Liu <kernelfans@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Oliver O'Halloran <oohall@gmail.com>, Dan Williams <dan.j.williams@intel.com>,
 Frank Rowand <frowand.list@gmail.com>, Hari Bathini <hbathini@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Splitting out new_property() for coming reusing and moving it to
of_helpers.c.

Also do some coding style cleanup.

Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Hari Bathini <hbathini@linux.ibm.com>
Cc: Aneesh Kumar K.V <aneesh.kumar@linux.ibm.com>
Cc: Oliver O'Halloran <oohall@gmail.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Andrew Donnellan <ajd@linux.ibm.com>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: kexec@lists.infradead.org
---
 arch/powerpc/platforms/pseries/of_helpers.c | 28 ++++++++++++++++++++++++++++
 arch/powerpc/platforms/pseries/of_helpers.h |  3 +++
 arch/powerpc/platforms/pseries/reconfig.c   | 26 --------------------------
 3 files changed, 31 insertions(+), 26 deletions(-)

diff --git a/arch/powerpc/platforms/pseries/of_helpers.c b/arch/powerpc/platforms/pseries/of_helpers.c
index 66dfd82..1022e0f 100644
--- a/arch/powerpc/platforms/pseries/of_helpers.c
+++ b/arch/powerpc/platforms/pseries/of_helpers.c
@@ -7,6 +7,34 @@
 
 #include "of_helpers.h"
 
+struct property *new_property(const char *name, const int length,
+		const unsigned char *value, struct property *last)
+{
+	struct property *new = kzalloc(sizeof(*new), GFP_KERNEL);
+
+	if (!new)
+		return NULL;
+
+	new->name = kstrdup(name, GFP_KERNEL);
+	if (!new->name)
+		goto cleanup;
+	new->value = kmalloc(length + 1, GFP_KERNEL);
+	if (!new->value)
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
 /**
  * pseries_of_derive_parent - basically like dirname(1)
  * @path:  the full_name of a node to be added to the tree
diff --git a/arch/powerpc/platforms/pseries/of_helpers.h b/arch/powerpc/platforms/pseries/of_helpers.h
index decad65..34add82 100644
--- a/arch/powerpc/platforms/pseries/of_helpers.h
+++ b/arch/powerpc/platforms/pseries/of_helpers.h
@@ -4,6 +4,9 @@
 
 #include <linux/of.h>
 
+struct property *new_property(const char *name, const int length,
+		const unsigned char *value, struct property *last);
+
 struct device_node *pseries_of_derive_parent(const char *path);
 
 #endif /* _PSERIES_OF_HELPERS_H */
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
