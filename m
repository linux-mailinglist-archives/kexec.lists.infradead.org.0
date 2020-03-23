Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9208418F09A
	for <lists+kexec@lfdr.de>; Mon, 23 Mar 2020 09:05:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zzlg5pxn41rtEOsBCUkO7wCUwNC0iZjX0zGii05AJQ0=; b=CKg7OeTyH+wmB0ffUczvTj7ZXr
	2pGjnuhxa/oy3OaKGjr0k77BrREkvSP3QKkFwgZBaAWuaWNiqiGJX26N0N7QDCizwaD03Wp9zNtiX
	q5SDUvl0g9DRRDwYXXn0hF7P6UKs02cmw8Qto2BLW+YQMrl6q7YbBxeE0/lp5b6hrk5dVdJaHlvGN
	/KHc7I0bxsTpxre7GoyI3acIb0qcA3OfHO9u62gtHwknCTkVBeulxcC9LTT2GObqQ0V4wCr1IebTQ
	ZSjkNOBWBpm8g26shjFLIQjRDwImuJq2f7js9ddWk2LcgKtrLn14CvILqtdHIxKTtJ4sMQ13ASoA9
	sTCQWW1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGI5J-0005qF-Io; Mon, 23 Mar 2020 08:05:21 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGI5D-0005l0-1D
 for kexec@lists.infradead.org; Mon, 23 Mar 2020 08:05:17 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200323080511epoutp018d05038d901bc92a908cb8baed51a620~_4EZp4oY91017310173epoutp01B
 for <kexec@lists.infradead.org>; Mon, 23 Mar 2020 08:05:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200323080511epoutp018d05038d901bc92a908cb8baed51a620~_4EZp4oY91017310173epoutp01B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1584950711;
 bh=TRbGcx9ZV+IqrIG8JwLR8QmselJK4B5I11L2jHQXF2Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OZoLDFObUL+8iKuF0f2Jp0KWDPMp7OSILQblDvr9QiOcp0kjk2d7w1c4Fj7pcfzYV
 6NhStdhtLs4IP0cAau9bH4MuRRXSZy691sjcOrFPL/6vLjVE1CEr50b/10DdM1M/GP
 IUF2L33PFGUOAASj+PCm5jMpJgRQLrON0PJBzWRk=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200323080511epcas1p2d7cdcc4edcce296e22135a322e7c704b~_4EZI67xg2102421024epcas1p2l;
 Mon, 23 Mar 2020 08:05:11 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.164]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 48m6PL2KbPzMqYkd; Mon, 23 Mar
 2020 08:05:10 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 95.2A.04074.4BD687E5; Mon, 23 Mar 2020 17:05:08 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477~_4EWBfKY43019030190epcas1p3C;
 Mon, 23 Mar 2020 08:05:08 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200323080507epsmtrp18e52c71f3a54794974a1c99e59279abe~_4EWAYGbR0063700637epsmtrp1e;
 Mon, 23 Mar 2020 08:05:07 +0000 (GMT)
X-AuditID: b6c32a39-58bff70000000fea-59-5e786db4b413
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 67.15.04158.3BD687E5; Mon, 23 Mar 2020 17:05:07 +0900 (KST)
Received: from jaewon-linux.10.32.193.11 (unknown [10.253.104.82]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200323080507epsmtip15ad9b6907ccc4b094399b05cc333e9db~_4EVz4Cu80126401264epsmtip1M;
 Mon, 23 Mar 2020 08:05:07 +0000 (GMT)
From: Jaewon Kim <jaewon31.kim@samsung.com>
To: gregkh@linuxfoundation.org, leon@kernel.org, vbabka@suse.cz,
 adobriyan@gmail.com, akpm@linux-foundation.org, labbott@redhat.com,
 sumit.semwal@linaro.org, minchan@kernel.org, ngupta@vflare.org,
 sergey.senozhatsky.work@gmail.com, kasong@redhat.com, bhe@redhat.com
Subject: [RFC PATCH v2 1/3] meminfo_extra: introduce meminfo extra
Date: Mon, 23 Mar 2020 17:05:01 +0900
Message-Id: <20200323080503.6224-2-jaewon31.kim@samsung.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200323080503.6224-1-jaewon31.kim@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA02Tf0xTVxTHd9/re6+Y1rxU507QIL5EJi5ASy1eN7roZpY3xjIWEk32B+wF
 bihZf7z0FaUkGyCEKAhUonEiGATFDXGQtnEgCEuBsc3FLhB/xhK3bCZzExIM4srUtX0a99/3
 nPP55px77r1a2jDBJmvLnR7idkp2gV2luTiRnpERdFQWGX2P0/Dx2jzcMdDP4vDdKIvregZY
 3BQ4gXDzwn0Kn5u/gvDIlSUKfz36mMJHo2dpHFg+yOLZSx0snut/xuDepQUOD9a3c/g3XxuF
 f4o85PDJ2ha00yAOt0c40d93iBX9i22ceOf6KCv+8OWKRhzv7OfEwJlqcWHsGiu2BPuQ+HPX
 JCcOLwYY8aE/pUD3iT3XRqRS4k4lzhJXabmzzCp8UFj8brElx2jKMO3A24VUp+QgVmF3fkHG
 e+X22PGE1H2SvSKWKpAURch6O9ftqvCQVJtL8VgFIpfaZZNRzlQkh1LhLMsscTneNBmN2ZYY
 +and9uBUA5LbtlROjebVoJ5NjShJC/w2aDn0O9uIVmkN/BCCu7VTlBosIhj86lukBo8QnJs5
 wr6wHPc/ouPawF9GEJrVqNAygtsBHxcvsPwbsNDVxsQLa/lWCroj3QmK5i8g6GuMUHFqDf8O
 HJ3uSWgNvxlunfehuNbzuTAyORczaGPtNsLpZ4luSbwVxmZuJ4YFvpeDiSc+Wh1pNxxonqZU
 vQbuTwc5VSfDn60NnGqoQ/DgRACpQT2CiL8ZqZQZmg//Qse70Xw6DFzKUtObYHilM4HQ/GqY
 XzrMqAPp4WCDQUXSoP7eEqPqDfDk6b3niAjhp2nqVnwIVmbnOR9KaX/ZoAuhPrSOyIqjjCgm
 2fL/K/OjxAPeumMIfX81P4R4LRJ0+pqm/UUGRtqneB0hBFpaWKsPkMoig75U8lYRt6vYXWEn
 SghZYps8Qie/WuKKfQenp9hkyTabzXhbzvYci1l4TX/shr3IwJdJHvIZITJxv/BR2qTkGjTl
 XRmp2x+2tO/6lQluGY/ezPqusHPPeKPjj4+Oee9UzWd/PNAQXW898NepLy6mb2Y+t/1Ipxv9
 ryxfXj24YedbHZNM0573T+49f+bflLzqdeAdzNQFpTAUZsmhIX3361UzH16IhpfH5lqb1peQ
 7NGUq3v1/5y9Jef/rZvurdZ90wqCRrFJpq20W5H+A+pzAAXWAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrFLMWRmVeSWpSXmKPExsWy7bCSnO7m3Io4g9e9FhbTG70s5qxfw2Zx
 /sEvNovmxevZLLo3z2S06H3/isli+bvTjBa7T39lsli55weTxZRfS5ktNn/vYLO4vGsOm8W9
 Nf9ZLZZ9fc9usaFlFrvFowmTmCxO3f3MbjG7sY/RQchj56y77B6bVnWyeWz6NInd4861PWwe
 J2b8ZvHYP3cNu8fmJfUe7/ddZfPo27KK0ePMgiPsHjs/bWb1+LxJLoAnissmJTUnsyy1SN8u
 gSvj7bw2xoJJGhVH93g1MC5W7GLk5JAQMJGYvukbcxcjF4eQwG5GibOLvzNDJGQk3px/ytLF
 yAFkC0scPlwMUfOVUWLnywVgNWwC2hLvF0xiBbFFBOYzSfS384MUMQtsZpSYuLSZBSQhLOAk
 MeX4YiYQm0VAVeLm6gmMIDavgI3E7iP3oBbISyz8DzaTU8BWYt+lW2wgthBQydbuZ8wTGPkW
 MDKsYpRMLSjOTc8tNiwwykst1ytOzC0uzUvXS87P3cQIjhEtrR2MJ07EH2IU4GBU4uG90Vse
 J8SaWFZcmXuIUYKDWUmEd3NqRZwQb0piZVVqUX58UWlOavEhRmkOFiVxXvn8Y5FCAumJJanZ
 qakFqUUwWSYOTqkGRqZv3/ZucD51/AabsuIKsz+K8/o4tPaoi8y689E7Tf7hdMnd6qJJby6v
 lZf75Vjv+fJq974tJjUpTsbT3yzO2he+jl84IXTRrFXzPvxwjbjEeCVsgbfw2/0TFd8XuJw2
 ncjENH2VdF3fR/ELdivEdu7Z8CMsnkHjSPTPIq0XMxbob3nk2/KIS1qJpTgj0VCLuag4EQC6
 tjChjQIAAA==
X-CMS-MailID: 20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477
References: <20200323080503.6224-1-jaewon31.kim@samsung.com>
 <CGME20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477@epcas1p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_010515_424287_2E953922 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: Jaewon Kim <jaewon31.kim@samsung.com>, linux-api@vger.kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 jaewon31.kim@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Provide APIs to drivers so that they can show its memory usage on
/proc/meminfo_extra.

int register_meminfo_extra(atomic_long_t *val, int shift,
			   const char *name);
int unregister_meminfo_extra(atomic_long_t *val);

Signed-off-by: Jaewon Kim <jaewon31.kim@samsung.com>
---
v2: move to /proc/meminfo_extra as a new file, meminfo_extra.c
    use rcu to reduce lock overhead
v1: print info at /proc/meminfo
---
 fs/proc/Makefile        |   1 +
 fs/proc/meminfo_extra.c | 123 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/mm.h      |   4 ++
 mm/page_alloc.c         |   1 +
 4 files changed, 129 insertions(+)
 create mode 100644 fs/proc/meminfo_extra.c

diff --git a/fs/proc/Makefile b/fs/proc/Makefile
index bd08616ed8ba..83d2f55591c6 100644
--- a/fs/proc/Makefile
+++ b/fs/proc/Makefile
@@ -19,6 +19,7 @@ proc-y	+= devices.o
 proc-y	+= interrupts.o
 proc-y	+= loadavg.o
 proc-y	+= meminfo.o
+proc-y	+= meminfo_extra.o
 proc-y	+= stat.o
 proc-y	+= uptime.o
 proc-y	+= util.o
diff --git a/fs/proc/meminfo_extra.c b/fs/proc/meminfo_extra.c
new file mode 100644
index 000000000000..bd3f0d2b7fb7
--- /dev/null
+++ b/fs/proc/meminfo_extra.c
@@ -0,0 +1,123 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/mm.h>
+#include <linux/proc_fs.h>
+#include <linux/seq_file.h>
+#include <linux/slab.h>
+
+static void show_val_kb(struct seq_file *m, const char *s, unsigned long num)
+{
+	seq_put_decimal_ull_width(m, s, num << (PAGE_SHIFT - 10), 8);
+	seq_write(m, " kB\n", 4);
+}
+
+static LIST_HEAD(meminfo_head);
+static DEFINE_SPINLOCK(meminfo_lock);
+
+#define NAME_SIZE      15
+#define NAME_BUF_SIZE  (NAME_SIZE + 2) /* ':' and '\0' */
+
+struct meminfo_extra {
+	struct list_head list;
+	atomic_long_t *val;
+	int shift_for_page;
+	char name[NAME_BUF_SIZE];
+	char name_pad[NAME_BUF_SIZE];
+};
+
+int register_meminfo_extra(atomic_long_t *val, int shift, const char *name)
+{
+	struct meminfo_extra *meminfo, *memtemp;
+	int len;
+	int error = 0;
+
+	meminfo = kzalloc(sizeof(*meminfo), GFP_KERNEL);
+	if (!meminfo) {
+		error = -ENOMEM;
+		goto out;
+	}
+
+	meminfo->val = val;
+	meminfo->shift_for_page = shift;
+	strncpy(meminfo->name, name, NAME_SIZE);
+	len = strlen(meminfo->name);
+	meminfo->name[len] = ':';
+	strncpy(meminfo->name_pad, meminfo->name, NAME_BUF_SIZE);
+	while (++len < NAME_BUF_SIZE - 1)
+		meminfo->name_pad[len] = ' ';
+
+	spin_lock(&meminfo_lock);
+	list_for_each_entry_rcu(memtemp, &meminfo_head, list) {
+		if (memtemp->val == val) {
+			error = -EINVAL;
+			break;
+		}
+	}
+	if (!error)
+		list_add_tail_rcu(&meminfo->list, &meminfo_head);
+	spin_unlock(&meminfo_lock);
+	if (error)
+		kfree(meminfo);
+out:
+
+	return error;
+}
+EXPORT_SYMBOL(register_meminfo_extra);
+
+int unregister_meminfo_extra(atomic_long_t *val)
+{
+	struct meminfo_extra *memtemp;
+	int error = -EINVAL;
+
+	spin_lock(&meminfo_lock);
+	list_for_each_entry_rcu(memtemp, &meminfo_head, list) {
+		if (memtemp->val == val) {
+			list_del_rcu(&memtemp->list);
+			error = 0;
+			break;
+		}
+	}
+	spin_unlock(&meminfo_lock);
+	if (!error) {
+		synchronize_rcu();
+		kfree(memtemp);
+	}
+
+	return error;
+}
+EXPORT_SYMBOL(unregister_meminfo_extra);
+
+static void __meminfo_extra(struct seq_file *m)
+{
+	struct meminfo_extra *memtemp;
+	unsigned long nr_page;
+
+	rcu_read_lock();
+	list_for_each_entry_rcu(memtemp, &meminfo_head, list) {
+		nr_page = (unsigned long)atomic_long_read(memtemp->val);
+		nr_page = nr_page >> memtemp->shift_for_page;
+		if (m)
+			show_val_kb(m, memtemp->name_pad, nr_page);
+		else
+			pr_cont("%s%lukB ", memtemp->name, nr_page);
+	}
+	rcu_read_unlock();
+}
+
+void show_meminfo_extra(void)
+{
+	__meminfo_extra(NULL);
+}
+
+static int meminfo_extra_proc_show(struct seq_file *m, void *v)
+{
+	__meminfo_extra(m);
+
+	return 0;
+}
+
+static int __init proc_meminfo_extra_init(void)
+{
+	proc_create_single("meminfo_extra", 0, NULL, meminfo_extra_proc_show);
+	return 0;
+}
+fs_initcall(proc_meminfo_extra_init);
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 52269e56c514..55317161ab57 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2898,6 +2898,10 @@ void __init setup_nr_node_ids(void);
 static inline void setup_nr_node_ids(void) {}
 #endif
 
+void show_meminfo_extra(void);
+int register_meminfo_extra(atomic_long_t *val, int shift, const char *name);
+int unregister_meminfo_extra(atomic_long_t *val);
+
 extern int memcmp_pages(struct page *page1, struct page *page2);
 
 static inline int pages_identical(struct page *page1, struct page *page2)
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 3c4eb750a199..db1be9a39783 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -5229,6 +5229,7 @@ void show_free_areas(unsigned int filter, nodemask_t *nodemask)
 	struct zone *zone;
 	pg_data_t *pgdat;
 
+	show_meminfo_extra();
 	for_each_populated_zone(zone) {
 		if (show_mem_node_skip(filter, zone_to_nid(zone), nodemask))
 			continue;
-- 
2.13.7


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
