Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9035018F099
	for <lists+kexec@lfdr.de>; Mon, 23 Mar 2020 09:05:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=CqBCSmvFE101O9RTzE1bhSgOCJZE1gvS/fnZKI7iL6U=; b=YV
	AfvLA74oythZZOJ57Q4Idqsoaf14sFlpbu85f5QO3KoyRtEBCfdLeWUPY+tm/cof99URMq2HIHKYI
	yW3c9rD3BzJOzppqbd4EuBBTBwXTawXQE7Nqqv3nDeNF3uWG5+gqeH2hwuGwnqk6GUOhQVBNphOIf
	7lQLU8IK/IAcfzDYXcHJ6hQkoM1yTMbVwr2WM0N6L6gBYAMsdm+bOsjwhQjgRr7NA62P1WqaOc10U
	fkU9kjFwWdjXvAtdE8YQtio5kov/+KtM9rneCTB2zImWK4eNOttcJbtYS+MD+Lna97j0Teg9yRbv3
	P46CbTaAa08TnTkDYA6zRgdpVwFCHwug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGI5F-0005mQ-RT; Mon, 23 Mar 2020 08:05:17 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGI5C-0005kz-9H
 for kexec@lists.infradead.org; Mon, 23 Mar 2020 08:05:16 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200323080511epoutp04dc5287504c67c81871b208a0cb4b94da~_4EZcQYfC1426014260epoutp04t
 for <kexec@lists.infradead.org>; Mon, 23 Mar 2020 08:05:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200323080511epoutp04dc5287504c67c81871b208a0cb4b94da~_4EZcQYfC1426014260epoutp04t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1584950711;
 bh=ykVbZIJ/4zPTvXN/17saU6Lgow62XEKLfWMfKVPs444=;
 h=From:To:Cc:Subject:Date:References:From;
 b=PYxYnDukUE/mhxHhKmnRyMEUH6wWDLu+MSMbpfVyh9bVNG/2VUUE6BxiiYlv8+QBJ
 VCSjUsxSWs0y/f3Dl1MmJ2c/FiPWS/OpSN+iz5dUQ3tZkkeV8bgMcPI8t4SBVd7obB
 ApyqIbqjuL0nhuScbrvV4ovNGVZJ+4OvjHLqiLtE=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20200323080510epcas1p45d75c9ffd58750ec792de3c4e171ad9f~_4EYpd_oX1773617736epcas1p4u;
 Mon, 23 Mar 2020 08:05:10 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.163]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 48m6PJ4YhyzMqYkp; Mon, 23 Mar
 2020 08:05:08 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 DB.49.04140.4BD687E5; Mon, 23 Mar 2020 17:05:08 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20200323080507epcas1p44cdb9ecb70a7a7395b3acddeda3cfd89~_4EV8G1Lz1502515025epcas1p47;
 Mon, 23 Mar 2020 08:05:07 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200323080507epsmtrp28c4b875b8eb660b709229a54f0557a32~_4EV7FeiX0358503585epsmtrp2z;
 Mon, 23 Mar 2020 08:05:07 +0000 (GMT)
X-AuditID: b6c32a36-fa3ff7000000102c-29-5e786db4b76d
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 36.15.04158.3BD687E5; Mon, 23 Mar 2020 17:05:07 +0900 (KST)
Received: from jaewon-linux.10.32.193.11 (unknown [10.253.104.82]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200323080507epsmtip19cc9783e8c5f665b0e45a27cc3c34d3c~_4EVs_MxA0126101261epsmtip1M;
 Mon, 23 Mar 2020 08:05:07 +0000 (GMT)
From: Jaewon Kim <jaewon31.kim@samsung.com>
To: gregkh@linuxfoundation.org, leon@kernel.org, vbabka@suse.cz,
 adobriyan@gmail.com, akpm@linux-foundation.org, labbott@redhat.com,
 sumit.semwal@linaro.org, minchan@kernel.org, ngupta@vflare.org,
 sergey.senozhatsky.work@gmail.com, kasong@redhat.com, bhe@redhat.com
Subject: [RFC PATCH v2 0/3] meminfo_extra: introduce meminfo extra
Date: Mon, 23 Mar 2020 17:05:00 +0900
Message-Id: <20200323080503.6224-1-jaewon31.kim@samsung.com>
X-Mailer: git-send-email 2.13.7
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBJsWRmVeSWpSXmKPExsWy7bCmnu6W3Io4gy3tqhbTG70s5qxfw2Zx
 /sEvNovmxevZLLo3z2S06H3/isli+bvTjBa7T39lsli55weTxZRfS5ktNn/vYLO4vGsOm8W9
 Nf9ZLZZ9fc9usaFlFrvFowmTmCxO3f3MbjG7sY/RQchj56y77B6bVnWyeWz6NInd4861PWwe
 J2b8ZvHYP3cNu8fmJfUe7/ddZfPo27KK0ePMgiPsHjs/bWb1+LxJLoAnKscmIzUxJbVIITUv
 OT8lMy/dVsk7ON453tTMwFDX0NLCXEkhLzE31VbJxSdA1y0zB+g9JYWyxJxSoFBAYnGxkr6d
 TVF+aUmqQkZ+cYmtUmpBSk6BoUGBXnFibnFpXrpecn6ulaGBgZEpUGVCTsbDTR1MBf/EKmad
 /cXYwHhZsIuRk0NCwERi2ultrF2MXBxCAjsYJV6//cAI4XxilLh8dQOU841R4vn2HpYuRg6w
 lqWTkyHiexklvhzawg7hfGeUeHvnERvIXDYBbYn3CyaBzRUR6GeSWHR3EQuIwyywllFiVddd
 JpAqYQEnic/7zrGC2CwCqhKz5vWwg9i8AjYSV37eYYRYJy+x8D8zSK+EQDe7xOQT3UwQl7tI
 vH93lAXCFpZ4dXwLO4QtJfH53V42iIZmoJNmbmaEcFoYJe5u6mWEqDKW6O25wAyygVlAU2L9
 Ln2IsKLEzt9zwUqYBfgk3n3tYYU4gleio00IokRNouXZV1YIW0bi779nULaHxN7HO8HuERKI
 ldi64hT7BEbZWQgLFjAyrmIUSy0ozk1PLTYsMEKOp02M4FSrZbaDcdE5n0OMAhyMSjy8Dd3l
 cUKsiWXFlbmHGCU4mJVEeDenVsQJ8aYkVlalFuXHF5XmpBYfYjQFht5EZinR5HxgHsgriTc0
 NTI2NrYwMTM3MzVWEuedej0nTkggPbEkNTs1tSC1CKaPiYNTqoGRudpAU+TkTP+i7lUsHjtD
 q8ps52x4t21WJD9fCKfImdiyxnVlmztPScm2WTXmZFrMW/V+6j+fRQwvtr2IcfT0WFdRLMz8
 oLZoccMV7dUTg+JWPmD4vVC/40PXx6ePRXIqJjfUXC68elhBks+6YFlnVFHa7XWP2JL0vvPs
 6paLnMoVFdE5zUyJpTgj0VCLuag4EQAOMLjYywMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrILMWRmVeSWpSXmKPExsWy7bCSnO7m3Io4g1VzjSymN3pZzFm/hs3i
 /INfbBbNi9ezWXRvnslo0fv+FZPF8nenGS12n/7KZLFyzw8miym/ljJbbP7ewWZxedccNot7
 a/6zWiz7+p7dYkPLLHaLRxMmMVmcuvuZ3WJ2Yx+jg5DHzll32T02repk89j0aRK7x51re9g8
 Tsz4zeKxf+4ado/NS+o93u+7yubRt2UVo8eZBUfYPXZ+2szq8XmTXABPFJdNSmpOZllqkb5d
 AlfGw00dTAX/xCpmnf3F2MB4WbCLkYNDQsBEYunk5C5GLg4hgd2MEvdvXWPrYuQEistIvDn/
 lAWiRlji8OFikLCQwFdGie5r1iA2m4C2xPsFk1hBbBGB+UwS/e38IHOYBTYzSkxc2swCkhAW
 cJL4vO8cWBGLgKrErHk97CA2r4CNxJWfdxgh5stLLPzPPIGRZwEjwypGydSC4tz03GLDAqO8
 1HK94sTc4tK8dL3k/NxNjOCA19LawXjiRPwhRgEORiUe3hu95XFCrIllxZW5hxglOJiVRHg3
 p1bECfGmJFZWpRblxxeV5qQWH2KU5mBREueVzz8WKSSQnliSmp2aWpBaBJNl4uCUamAsDvzz
 8UTvZqeMrZ4zBdeZmb3Zuof/w5S3ExfcdNTlNuzs+L+N00Kcyfjw9uO+zG88me3E9jrPmRr0
 XNh4ykFLoT3lttMk1j+ovmdmH6b65fgHiRtnDjDf8v/aud3koEl0lZJ7yfqdk/hCNnP+/pCz
 pdUtLEBtVpHi1JwdcWuFhe49PHXpB7OVEktxRqKhFnNRcSIAV4zkQHQCAAA=
X-CMS-MailID: 20200323080507epcas1p44cdb9ecb70a7a7395b3acddeda3cfd89
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200323080507epcas1p44cdb9ecb70a7a7395b3acddeda3cfd89
References: <CGME20200323080507epcas1p44cdb9ecb70a7a7395b3acddeda3cfd89@epcas1p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_010514_689215_42F18895 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
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

/proc/meminfo or show_free_areas does not show full system wide memory
usage status because memory stats do not track all memory allocations.
There seems to be huge hidden memory especially on embedded system. It
is because some HW IPs in the system use common DRAM memory instead of
internal memory. Device drivers directly request huge pages from the
page allocator with alloc_pages.

In Android system, most of those hidden memory seems to be vmalloc
pages, ion system heap memory, graphics memory, and memory for DRAM
based compressed swap storage. They may be shown in other node but it
seems to be useful if /proc/meminfo_extra shows all those extra memory
information. And show_mem also need to print the info in oom situation.

Fortunately vmalloc pages is already shown by commit 97105f0ab7b8
("mm: vmalloc: show number of vmalloc pages in /proc/meminfo"). Swap
memory using zsmalloc can be seen through vmstat by commit 91537fee0013
("mm: add NR_ZSMALLOC to vmstat") but not on /proc/meminfo.

Memory usage of specific driver can be various so that showing the usage
through upstream meminfo.c is not easy. To print the extra memory usage
of a driver, introduce following APIs. Each driver needs to count as
atomic_long_t.

int register_meminfo_extra(atomic_long_t *val, int shift,
			   const char *name);
int unregister_meminfo_extra(atomic_long_t *val);

Currently register ION system heap allocator and zsmalloc pages.
Additionally tested on local graphics driver.

i.e) cat /proc/meminfo_extra | tail -3
IonSystemHeap:    242620 kB
ZsPages:          203860 kB
GraphicDriver:    196576 kB

i.e.) show_mem on oom
<6>[  420.856428]  Mem-Info:
<6>[  420.856433]  IonSystemHeap:32813kB ZsPages:44114kB GraphicDriver::13091kB
<6>[  420.856450]  active_anon:957205 inactive_anon:159383 isolated_anon:0

---
v2: move to /proc/meminfo_extra, and use rcu
v1: print info at /proc/meminfo
On v1 patch, there was not resolved discussion about the logic. There
seems to be agreement on showing memory usage, but there was a lack of
consensus on way of showing the information. Other opinion is using
/sys/ as separate file for each driver.
---

Jaewon Kim (3):
  meminfo_extra: introduce meminfo extra
  mm: zsmalloc: include zs page size in meminfo extra
  android: ion: include system heap size in meminfo extra

 drivers/staging/android/ion/ion.c             |   2 +
 drivers/staging/android/ion/ion.h             |   1 +
 drivers/staging/android/ion/ion_system_heap.c |   2 +
 fs/proc/Makefile                              |   1 +
 fs/proc/meminfo_extra.c                       | 123 ++++++++++++++++++++++++++
 include/linux/mm.h                            |   4 +
 mm/page_alloc.c                               |   1 +
 mm/zsmalloc.c                                 |   2 +
 8 files changed, 136 insertions(+)
 create mode 100644 fs/proc/meminfo_extra.c

-- 
2.13.7


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
