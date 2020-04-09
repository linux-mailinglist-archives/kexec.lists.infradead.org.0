Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8692A1A2D78
	for <lists+kexec@lfdr.de>; Thu,  9 Apr 2020 03:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YJ3+kCdr9ZVpRhb2I/7YbvlmHbiASKvtzxTMbGECrLQ=; b=VxuRmscMl2KaS2xiBNC9H/nMBS
	U6mBJXBEpAWXbEcCzz3ZrhxnXRGyXukeTkMFh3ponBQCXomEdC/PjIfbHZPnccZtKAXBvZlsBezvj
	eSsAAInvj+pL7JUO6j++A01zF02jnjpUCCMBonPc43mt24B20nSgZjVL2+NmdsUwf9a1cTCvmR7/r
	g9n74ZhX7tqP8HlK7TL1DVaqB0rpoE+2o8odteNamypGSAtCWaL5MENbw2T+nZ6JMn9e5mx5CirUz
	6LRD6QwNqp2mmaUDdjCwLU9/4EKE5tmpFyXBJ7ydvPr4zt/wCSz/rEIh5RKZuzTaOv0kiEvee5UdU
	r+9k3Jug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMMTU-00060T-Mk; Thu, 09 Apr 2020 01:59:24 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMMTR-0005zL-Lw
 for kexec@lists.infradead.org; Thu, 09 Apr 2020 01:59:23 +0000
Received: by mail-pj1-x1043.google.com with SMTP id t40so626673pjb.3
 for <kexec@lists.infradead.org>; Wed, 08 Apr 2020 18:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+nzNcvHE7znKtUbTH1h7qAqABqp+roGwnZR7QhEKjNg=;
 b=LMeOXr4DEpGU949d4FXAjBBrSehRR+SLJBEMB6pJvxTGHLcGmO+Aak6KwZrM75DwhL
 3uV8PX0N+0OBLxq7yDwWJV3qeU11jjPqEQPIc0dWZqR0q8gbkd4wvmFl4AhPvLyb+UoZ
 Yz2bP4Xm2YX0oPe/B6VY0LWws/Kjo95nPD8lu1GyCh8f9GpmLSc75hF3X5Npn6sZnmqQ
 0oag58vkruy45/qCUKUIsCYrBBv6HIeScBS6/VwUDouIO0ZWvDMuaFvkN1lNkSLtUoaK
 TJp6ptQZj+JfhFxC0t8gssnyy8A1LxkbAMNF1eNxy+WkUGFMzN3s9TcVzn2+tvWMzfmL
 jTbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+nzNcvHE7znKtUbTH1h7qAqABqp+roGwnZR7QhEKjNg=;
 b=aTDcMp4aDfdV+s1xTkJwgU5NlKfgssaUOz8Svw+vf17qNv4hiGxVv+RFfpR761vid3
 kIXccL/WynbZHpqydnhbxZGAdEkIV8ZT+Dij399u+/ooyDEecHxZMB6jlKq7WEh6feHR
 dg7mYZyxsGkbVxrFkUxGkTOXOevSsgJC4r/Y47pJM6YR44rhMPpaVgo6QvSGsHIkVgn5
 6mImbcPLm8WrF8RriOvmUk/vGz5Elrpf5IMxjFbVxfFMUUP+H47ZK95GYQVb4Nd2Gv7i
 YIS1ZPPT7qZkt0zr1tJuSOe9SZ9KlUHa8yi5sY5jvYrSjUGtz4fL/ZdLugw1+j9fU9t9
 4jOQ==
X-Gm-Message-State: AGi0PuannzvrvV3Fx+OzDifGHmh45zebiLsRt0FmI2sassEMHsglL4g7
 TFSErSFwZ90ppqSDftGmpYa9XVd5SQ==
X-Google-Smtp-Source: APiQypIXcVvSFd4LPa6h3J2f9FhTYsaMvRnAl7LRvhih+g2bob+2p8SKKBLhG/A/NC2TKWcyi9NG4Q==
X-Received: by 2002:a17:902:8bc7:: with SMTP id
 r7mr10035156plo.12.1586397560894; 
 Wed, 08 Apr 2020 18:59:20 -0700 (PDT)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id w27sm17822530pfq.211.2020.04.08.18.59.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Apr 2020 18:59:20 -0700 (PDT)
From: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Subject: [PATCHv2 2/2] powerpc/pseries: update device tree before ejecting
 hotplug uevents
Date: Thu,  9 Apr 2020 09:56:51 +0800
Message-Id: <1586397411-24259-2-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
In-Reply-To: <1586397411-24259-1-git-send-email-kernelfans@gmail.com>
References: <1586397411-24259-1-git-send-email-kernelfans@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_185921_713870_C2687B76 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
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
So in kdump kernel, when read_from_oldmem() resorts to
pSeries_lpar_hpte_insert() to install hpte, but fails with -2 due to
non-exist pfn. And finally, low_hash_fault() raise SIGBUS to process, as it
can be observed "Bus error"

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
Cc: Leonardo Bras <leonardo@linux.ibm.com> 
Cc: Libor Pechacek <lpechacek@suse.cz> 
Cc: Nathan Fontenot <nfont@linux.vnet.ibm.com> 
To: linuxppc-dev@lists.ozlabs.org
Cc: kexec@lists.infradead.org
---
v1 -> v2: improve commit, and more detail about the SIGBUG failure path
 arch/powerpc/platforms/pseries/hotplug-memory.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/powerpc/platforms/pseries/hotplug-memory.c b/arch/powerpc/platforms/pseries/hotplug-memory.c
index 4bd9004..72cd4a5 100644
--- a/arch/powerpc/platforms/pseries/hotplug-memory.c
+++ b/arch/powerpc/platforms/pseries/hotplug-memory.c
@@ -394,6 +394,9 @@ static int dlpar_remove_lmb(struct drmem_lmb *lmb)
 	invalidate_lmb_associativity_index(lmb);
 	lmb_clear_nid(lmb);
 	lmb->flags &= ~DRCONF_MEM_ASSIGNED;
+	rtas_hp_event = true;
+	drmem_update_dt();
+	rtas_hp_event = false;
 
 	__remove_memory(nid, base_addr, block_sz);
 
@@ -667,6 +670,9 @@ static int dlpar_add_lmb(struct drmem_lmb *lmb)
 
 	lmb_set_nid(lmb);
 	lmb->flags |= DRCONF_MEM_ASSIGNED;
+	rtas_hp_event = true;
+	drmem_update_dt();
+	rtas_hp_event = false;
 
 	block_sz = memory_block_size_bytes();
 
@@ -685,6 +691,9 @@ static int dlpar_add_lmb(struct drmem_lmb *lmb)
 		invalidate_lmb_associativity_index(lmb);
 		lmb_clear_nid(lmb);
 		lmb->flags &= ~DRCONF_MEM_ASSIGNED;
+		rtas_hp_event = true;
+		drmem_update_dt();
+		rtas_hp_event = false;
 
 		__remove_memory(nid, base_addr, block_sz);
 	}
@@ -941,12 +950,6 @@ int dlpar_memory(struct pseries_hp_errorlog *hp_elog)
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
