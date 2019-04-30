Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7358F19C
	for <lists+kexec@lfdr.de>; Tue, 30 Apr 2019 09:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jLM0sbsTObRAOqOJolwmfGhrrkxEACJVJmsK1jgd+0w=; b=TVb1MVK6bYha3KEwFjvXpx0OoX
	3z2hYhDrocz2JmmMnp2Z8N567ZJ1HNaeoCXspA0m06Op+LbZ6eQ1Fani5T1CM4Ef0KPxz78ld+u5i
	Yr4sgSCRtZGvHhkZ8l3w71z2mq60XXr5NvWE6nqHfRHk4yWskI46mbsuZwehcbxExFk/vXClPXW+4
	suVOi9pekcIlxSaTmi8txKkDemaPsJqOGGm4tLQDd0KFBMIxb5+OLlqFrapoWHG4vEkFEE0D5sVmr
	IANxCMqpadpdrAWeEDhVLUSMYedYnUM9kIPOBVwti7FQOYVO9tOmM+iNBa4ZxkvBWzQh6YydVDUMK
	YCI8N/Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLNRz-0003yY-IJ; Tue, 30 Apr 2019 07:45:15 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLNRx-0003xd-2I
 for kexec@lists.infradead.org; Tue, 30 Apr 2019 07:45:14 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 965C537E88;
 Tue, 30 Apr 2019 07:45:12 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-43.pek2.redhat.com
 [10.72.12.43])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A5894799A;
 Tue, 30 Apr 2019 07:45:03 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/3 v3] kdump,
 proc/vmcore: Enable dumping encrypted memory when SEV was active
Date: Tue, 30 Apr 2019 15:44:21 +0800
Message-Id: <20190430074421.7852-4-lijiang@redhat.com>
In-Reply-To: <20190430074421.7852-1-lijiang@redhat.com>
References: <20190430074421.7852-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 30 Apr 2019 07:45:12 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_004513_132077_B91417E7 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Thomas.Lendacky@amd.com, brijesh.singh@amd.com, bhe@redhat.com,
 x86@kernel.org, kexec@lists.infradead.org, mingo@redhat.com, bp@alien8.de,
 hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com,
 akpm@linux-foundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

In the kdump kernel, the memory of the first kernel needs to be dumped
into the vmcore file.

It is similar to the SME kdump, if SEV was enabled in the first kernel,
the old memory has to be remapped with memory encryption mask in order
to access it properly. Following commit 992b649a3f01 ("kdump, proc/vmcore:
Enable kdumping encrypted memory with SME enabled") took care of the
SME case but it uses sme_active() which checks for SME only. Lets use
the mem_encrypt_active() which returns true when either of them are
active.

Unlike the SME, the second kernel images(kernel and initrd) are loaded
to the encrypted memory when SEV is active, hence the kernel elf header
must be remapped as encrypted in order to access it properly.

Co-developed-by: Brijesh Singh <brijesh.singh@amd.com>
Signed-off-by: Brijesh Singh <brijesh.singh@amd.com>
Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
---
 fs/proc/vmcore.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/proc/vmcore.c b/fs/proc/vmcore.c
index 3fe90443c1bb..cda6c1922e4f 100644
--- a/fs/proc/vmcore.c
+++ b/fs/proc/vmcore.c
@@ -165,7 +165,7 @@ void __weak elfcorehdr_free(unsigned long long addr)
  */
 ssize_t __weak elfcorehdr_read(char *buf, size_t count, u64 *ppos)
 {
-	return read_from_oldmem(buf, count, ppos, 0, false);
+	return read_from_oldmem(buf, count, ppos, 0, sev_active());
 }
 
 /*
@@ -173,7 +173,7 @@ ssize_t __weak elfcorehdr_read(char *buf, size_t count, u64 *ppos)
  */
 ssize_t __weak elfcorehdr_read_notes(char *buf, size_t count, u64 *ppos)
 {
-	return read_from_oldmem(buf, count, ppos, 0, sme_active());
+	return read_from_oldmem(buf, count, ppos, 0, mem_encrypt_active());
 }
 
 /*
@@ -373,7 +373,7 @@ static ssize_t __read_vmcore(char *buffer, size_t buflen, loff_t *fpos,
 					    buflen);
 			start = m->paddr + *fpos - m->offset;
 			tmp = read_from_oldmem(buffer, tsz, &start,
-					       userbuf, sme_active());
+					       userbuf, mem_encrypt_active());
 			if (tmp < 0)
 				return tmp;
 			buflen -= tsz;
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
