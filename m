Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6381C7ECE
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:45:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b+Qbm2cJ1ytkuTEprk5uZewQdZyMDTwPts9pKdddnIw=; b=LgkV+tIHuhXgtzi+d3EmFcBdua
	UcMwrpGob/ReYQAUQUlnhj4fH08XDDr+WmO2xbfLS5iZ9TwFkg8zRrTVYV+DrH9+Cb3TWLb2lg2le
	uvkVWDBDlxca/6ynrpkIoGZKwuxN3KCNTmyaKq1edh6jhvQWm1ZIx/Lc6mLDa7mpwIdDj+Jt0ViKW
	+BPNxo2PComaY3ybpyCRcWiFvCT5s1xH4THvEtZJi5+oEfGX9qJmc7C2eOq0rlysNa9JIZCVVvzKh
	vVqnX3HSObmg1/AsmTA0u2vU1+X/kKTPPnGlBLH9XA+wNiqhYjlPjXJmbjx69FNtWtgNC6upb5LIw
	kV7CwAbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUex-0000dq-Af; Thu, 07 May 2020 00:45:07 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUej-0000Ru-Fn
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:44:59 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470c5BP093096;
 Thu, 7 May 2020 00:44:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=ALhXxW63LGZoM6V1NGaT+SnLTVsGEByBjEn2ykRFtnU=;
 b=WcY7ARrycjOtSErtWFAU7jEvJCDzYLSMBBQdEfiSz+VYmm+P1vsiQipFRaHJUKefDQGP
 6SpWpJBVSg9v6poZtOhM+2hrCsnxl4pzn6zYo4RjyJ4+qFdAymPEnFqh+BblrFOCjNA0
 XyKWvLvG7vKezc7rF7JYRpliViNaHZR8KW1i1GGsXAXequif8VvZ+tkVIKDcugDuYbBH
 YuryJoR0X2xYHmHfLo+CWApOuQEpt2LzEmBRNoO7V72Rr1m6OLrd+fh37MBvbvhCdP1e
 kocUdOrK1sim2WztAHrtjy2lA9VQ/tMfFjN2zEdc7hlmRCU+CQRP/xvQDIkwglOkuSz6 pQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 30s1gnd8pb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:44:05 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470alNS170704;
 Thu, 7 May 2020 00:44:05 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 30us7p2nm1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:44:05 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0470i20o025972;
 Thu, 7 May 2020 00:44:02 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:44:02 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 25/43] mm: shmem: specify the mm to use when inserting pages
Date: Wed,  6 May 2020 17:41:51 -0700
Message-Id: <1588812129-8596-26-git-send-email-anthony.yznaga@oracle.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
References: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 suspectscore=0
 mlxlogscore=999 malwarescore=0 phishscore=0 mlxscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070001
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0 mlxscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_174453_674371_18C5B329 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: x86@kernel.org, linux-doc@vger.kernel.org, gustavo@embeddedor.com,
 peterz@infradead.org, kexec@lists.infradead.org, paul.c.lai@intel.com,
 dave.hansen@linux.intel.com, mhocko@kernel.org, lei.l.li@intel.com,
 nivedita@alum.mit.edu, ziqian.lzq@antfin.com, hpa@zytor.com, ardb@kernel.org,
 ashok.raj@intel.com, bhe@redhat.com, corbet@lwn.net, masahiroy@kernel.org,
 rafael.j.wysocki@intel.com, hughd@google.com, willy@infradead.org,
 rppt@linux.ibm.com, mingo@redhat.com, vdavydov.dev@gmail.com,
 ying.huang@intel.com, Thomas.Lendacky@amd.com, kevin.tian@intel.com,
 jroedel@suse.de, keescook@chromium.org, dan.j.williams@intel.com, bp@alien8.de,
 zhiyuan.lv@intel.com, luto@kernel.org, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, dima@golovin.in, yang.shi@linux.alibaba.com,
 ndesaulniers@google.com, zhenzhong.duan@oracle.com, guro@fb.com,
 minchan@kernel.org, ebiederm@xmission.com, jason.zeng@intel.com,
 hannes@cmpxchg.org, linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 daniel.kiper@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Explicitly specify the mm to pass to shmem_insert_page() when
the pkram_stream is initialized rather than use the mm of the
current thread.  This will allow for multiple kernel threads to
target the same mm when inserting pages in parallel.

Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 include/linux/pkram.h | 1 +
 mm/pkram.c            | 1 +
 mm/shmem_pkram.c      | 2 +-
 3 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/linux/pkram.h b/include/linux/pkram.h
index b47b3aef16e3..cbb79d2803c0 100644
--- a/include/linux/pkram.h
+++ b/include/linux/pkram.h
@@ -18,6 +18,7 @@ struct pkram_stream {
 
 	unsigned long next_index;
 	struct address_space *mapping;
+	struct mm_struct *mm;
 
 	/* byte data */
 	struct page *data_page;
diff --git a/mm/pkram.c b/mm/pkram.c
index 4d4d836fea53..a5e539052af6 100644
--- a/mm/pkram.c
+++ b/mm/pkram.c
@@ -565,6 +565,7 @@ static void pkram_stream_init(struct pkram_stream *ps,
 	memset(ps, 0, sizeof(*ps));
 	ps->gfp_mask = gfp_mask;
 	ps->node = node;
+	ps->mm = current->mm;
 }
 
 static void pkram_stream_init_obj(struct pkram_stream *ps, struct pkram_obj *obj)
diff --git a/mm/shmem_pkram.c b/mm/shmem_pkram.c
index 3fa9cfbe0003..c97d64393822 100644
--- a/mm/shmem_pkram.c
+++ b/mm/shmem_pkram.c
@@ -236,7 +236,7 @@ static int load_file_content(struct pkram_stream *ps)
 		if (!page)
 			break;
 
-		err = shmem_insert_page(current->mm, ps->mapping->host, index, page);
+		err = shmem_insert_page(ps->mm, ps->mapping->host, index, page);
 		put_page(page);
 	} while (!err);
 
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
