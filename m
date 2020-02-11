Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38525158879
	for <lists+kexec@lfdr.de>; Tue, 11 Feb 2020 04:02:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7mVxy6U9JMIbZoG0eL88G2be9keL0sQBR1o8LnMdSkA=; b=OYXKts51QckTVtHyFiUEKs3ey8
	M4NAHwiAo+6KTE35Jn5kkDXFOacE6Q1z19Ckh/QbTyaqTuhJJ4umhSzSXOF9wsMqKBwIzW4HrDPSt
	VHQDHIuksNmkTiwboXw91qqSVBmDwEu5BPs96URrWlKKhaUjaJrMYGSkfjaTca7hvk/LutHSxxXDN
	fHN5dDJs8G2+WIuwh6nO+NMTBfBvGDeEdwqStbQRdSdtL/H8GH0nLM2BJXZ7HmjIbXybCVqQwKg4C
	KQbGni0/Hm+xyRPJNNwDff4pLK2YtXkaE3j3/8B5nCIfRJgMWNS/+oeaRGndlw/NqvoAsXjykQY7v
	E07ZBI2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Lor-0002bP-HQ; Tue, 11 Feb 2020 03:02:37 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Lon-0002aL-BB
 for kexec@lists.infradead.org; Tue, 11 Feb 2020 03:02:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id j9so4700357pfa.8
 for <kexec@lists.infradead.org>; Mon, 10 Feb 2020 19:02:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2Q+JO1fZOB0lKMDmVqxu6245Sva9CNNJOFjkmxWxmRY=;
 b=n6WDDUbCZ445V6OlluOnoSLEEQkCmfwepuCQ47yQmkNN+P+DvNQEXt1XA8Fa0xDVxG
 mNfulLp6vdth5/tUuLjyd+up5PHLO215agDTis/MYB9cYfY2ztaV6EHQzob/Rxb/FsdG
 zciYTskeUThlr0vnzYlhmfKZ3TRI8WN5MtSFRPD0wmtgCuMRz5qc3DwT0GXBY907X6tG
 V28vSDO3lmIvAh9EisV4zfZ5rkQtIdQIliG0uMmKOfl5YCeV1U3sZ2e/jDsPMR2EZ1Nb
 BfBQjpkr1xFlkfOguEdsGS8KbeLqBwyfSj0dKDtFzMtof5CD6KFGTjjzEXnEmhBAMQK1
 oBkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2Q+JO1fZOB0lKMDmVqxu6245Sva9CNNJOFjkmxWxmRY=;
 b=jEYho50NdV2h8EeRkppynfHLMQV8h21SzX4ZqIGt/9YQlA48exKZsZTLLjmhWgh9Os
 m4TL4+72uvyM9mxSVOE6wxd913jTTzbe03jkrVRSDlZGXwODEwCkqX5d0v2nursMo1Xr
 7X7KXvBZnYhyzC12t3f+rEjGz9ACDMqa+ga0dJO45HR32gZtEoHVEiIAxOF2W1AzUEH7
 0+8/pm67AChksLVvUHM6yiH8OFsHRri79dK3G88NmmjgurDuBDhJUtIMDwJQhAmkdYu8
 oNWN8Dt69ry0XQzo+ap6wrK1cyehr13LUnFL5OnAl74sG50KYVovSB/FBPhfR6JZvBmj
 HXsA==
X-Gm-Message-State: APjAAAU6xMGleBmN7Lg8jsOrGHad7/lR8z9oEdsknJrajAcMPbFiXzyW
 GcsXI18WBM82TIGIacrjWw==
X-Google-Smtp-Source: APXvYqy4Y7dOg/D/Saba9q/P/Moy2/OqlmtLwEJRrgaM4SaEusdJIFoNRkNHSiNU1bZ5A/UCL7I99A==
X-Received: by 2002:a63:ba03:: with SMTP id k3mr4967289pgf.52.1581390151579;
 Mon, 10 Feb 2020 19:02:31 -0800 (PST)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id m71sm1290633pje.0.2020.02.10.19.02.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Feb 2020 19:02:31 -0800 (PST)
From: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Subject: [PATCH 2/2] powerpc/pseries: update device tree before ejecting
 hotplug uevents
Date: Tue, 11 Feb 2020 10:59:42 +0800
Message-Id: <1581389982-5701-2-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
In-Reply-To: <1581389982-5701-1-git-send-email-kernelfans@gmail.com>
References: <1581389982-5701-1-git-send-email-kernelfans@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_190233_382478_3FEF9750 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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

A bug is observed on pseries by taking the following steps on rhel:
-1. drmgr -c mem -r -q 5
-2. echo c > /proc/sysrq-trigger

And then, the failure looks like:
kdump: saving to /sysroot//var/crash/127.0.0.1-2020-01-16-02:06:14/
kdump: saving vmcore-dmesg.txt
kdump: saving vmcore-dmesg.txt complete
kdump: saving vmcore
 Checking for memory holes                         : [  0.0 %] /                   Checking for memory holes                         : [100.0 %] |                   Excluding unnecessary pages                       : [100.0 %] \                   Copying data                                      : [  0.3 %] -          eta: 38s[   44.337636] hash-mmu: mm: Hashing failure ! EA=0x7fffba400000 access=0x8000000000000004 current=makedumpfile
[   44.337663] hash-mmu:     trap=0x300 vsid=0x13a109c ssize=1 base psize=2 psize 2 pte=0xc000000050000504
[   44.337677] hash-mmu: mm: Hashing failure ! EA=0x7fffba400000 access=0x8000000000000004 current=makedumpfile
[   44.337692] hash-mmu:     trap=0x300 vsid=0x13a109c ssize=1 base psize=2 psize 2 pte=0xc000000050000504
[   44.337708] makedumpfile[469]: unhandled signal 7 at 00007fffba400000 nip 00007fffbbc4d7fc lr 000000011356ca3c code 2
[   44.338548] Core dump to |/bin/false pipe failed
/lib/kdump-lib-initramfs.sh: line 98:   469 Bus error               $CORE_COLLECTOR /proc/vmcore $_mp/$KDUMP_PATH/$HOST_IP-$DATEDIR/vmcore-incomplete
kdump: saving vmcore failed

* Root cause *
  After analyzing, it turns out that in the current implementation,
when hot-removing lmb, the KOBJ_REMOVE event ejects before the dt updating as
the code __remove_memory() comes before drmem_update_dt().

From a viewpoint of listener and publisher, the publisher notifies the
listener before data is ready.  This introduces a problem where udev
launches kexec-tools (due to KOBJ_REMOVE) and loads a stale dt before
updating. And in capture kernel, makedumpfile will access the memory based
on the stale dt info, and hit a SIGBUS error due to an un-existed lmb.

* Fix *
  In order to fix this issue, update dt before __remove_memory(), and
accordingly the same rule in hot-add path.

This will introduce extra dt updating payload for each involved lmb when hotplug.
But it should be fine since drmem_update_dt() is memory based operation and
hotplug is not a hot path.

Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Hari Bathini <hbathini@linux.ibm.com>
To: linuxppc-dev@lists.ozlabs.org
Cc: kexec@lists.infradead.org
---
 arch/powerpc/platforms/pseries/hotplug-memory.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/powerpc/platforms/pseries/hotplug-memory.c b/arch/powerpc/platforms/pseries/hotplug-memory.c
index a3a9353..1f623c3 100644
--- a/arch/powerpc/platforms/pseries/hotplug-memory.c
+++ b/arch/powerpc/platforms/pseries/hotplug-memory.c
@@ -392,6 +392,9 @@ static int dlpar_remove_lmb(struct drmem_lmb *lmb)
 	invalidate_lmb_associativity_index(lmb);
 	lmb_clear_nid(lmb);
 	lmb->flags &= ~DRCONF_MEM_ASSIGNED;
+	rtas_hp_event = true;
+	drmem_update_dt();
+	rtas_hp_event = false;
 
 	__remove_memory(nid, base_addr, block_sz);
 
@@ -665,6 +668,9 @@ static int dlpar_add_lmb(struct drmem_lmb *lmb)
 
 	lmb_set_nid(lmb);
 	lmb->flags |= DRCONF_MEM_ASSIGNED;
+	rtas_hp_event = true;
+	drmem_update_dt();
+	rtas_hp_event = false;
 
 	block_sz = memory_block_size_bytes();
 
@@ -683,6 +689,9 @@ static int dlpar_add_lmb(struct drmem_lmb *lmb)
 		invalidate_lmb_associativity_index(lmb);
 		lmb_clear_nid(lmb);
 		lmb->flags &= ~DRCONF_MEM_ASSIGNED;
+		rtas_hp_event = true;
+		drmem_update_dt();
+		rtas_hp_event = false;
 
 		__remove_memory(nid, base_addr, block_sz);
 	}
@@ -939,12 +948,6 @@ int dlpar_memory(struct pseries_hp_errorlog *hp_elog)
 		break;
 	}
 
-	if (!rc) {
-		rtas_hp_event = true;
-		rc = drmem_update_dt();
-		rtas_hp_event = false;
-	}
-
 	unlock_device_hotplug();
 	return rc;
 }
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
