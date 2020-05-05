Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463EC1C5F24
	for <lists+kexec@lfdr.de>; Tue,  5 May 2020 19:45:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YOknEKjAJDiMY4SporjYqznroMpdulE7yU/xyFWf2UA=; b=W1mSB/XSkwlDbP
	kp0617Thr20AClCJfqzolLuriYF3gcQb6HHghr4maQRb/72GxWxkf8LXQGdxfmQZ/bSv4bAqQ2eYT
	FFH/ggAGrDCeREfsD1U/h4Mj5eJy7jCmjyN6H7BDkHK5OZbc6O+WoRylP90N21X0YB+UEHjhNavQO
	tBqVVc12aaqH8EQrdR5V2ZK51PZK+wV9H4OFVo+Y7m/Q8WlOPjxEUP4hV/oYRZxxotIkdro+y0c46
	u+VHM1P+oh7vwtPZOJxOop5Eb+g5PjgE8lsCAPn/KBPD38bR3OIKVOdMq9MSVhMaunv+gwFszXFAR
	7nL7p93AQ97pac58Bcbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1cu-0004vz-PI; Tue, 05 May 2020 17:45:04 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW1cq-0004bl-DN
 for kexec@lists.infradead.org; Tue, 05 May 2020 17:45:02 +0000
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 045H4uMf053335; Tue, 5 May 2020 13:44:43 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com with ESMTP id 30s50gvc1f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 13:44:43 -0400
Received: from m0098414.ppops.net (m0098414.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 045H5HBO054487;
 Tue, 5 May 2020 13:44:42 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.99])
 by mx0b-001b2d01.pphosted.com with ESMTP id 30s50gvc0k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 13:44:42 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
 by ppma04ams.nl.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 045Hf6AZ027770;
 Tue, 5 May 2020 17:44:40 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com
 (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
 by ppma04ams.nl.ibm.com with ESMTP id 30s0g5qe8w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 17:44:40 +0000
Received: from d06av24.portsmouth.uk.ibm.com (d06av24.portsmouth.uk.ibm.com
 [9.149.105.60])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 045HicqQ65995104
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 5 May 2020 17:44:38 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8EC0F4203F;
 Tue,  5 May 2020 17:44:38 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id BAA9F42042;
 Tue,  5 May 2020 17:44:33 +0000 (GMT)
Received: from [9.102.27.216] (unknown [9.102.27.216])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Tue,  5 May 2020 17:44:33 +0000 (GMT)
Subject: Re: [RFC][PATCH] kexec: Teach indirect pages how to live in high
 memory
To: "Eric W. Biederman" <ebiederm@xmission.com>, Joonsoo Kim <js1304@gmail.com>
References: <1588130803-20527-1-git-send-email-iamjoonsoo.kim@lge.com>
 <1588130803-20527-4-git-send-email-iamjoonsoo.kim@lge.com>
 <87h7wzvjko.fsf@x220.int.ebiederm.org>
 <CAAmzW4MrD75+Prw=fQ=d5uXKgGy3urBwmxnNtoNsw5M1m9xjYQ@mail.gmail.com>
 <87ftcfpzjn.fsf@x220.int.ebiederm.org>
 <87368fmkel.fsf_-_@x220.int.ebiederm.org>
From: Hari Bathini <hbathini@linux.ibm.com>
Message-ID: <54a53bfe-6929-2790-9b1d-943e9f47cd62@linux.ibm.com>
Date: Tue, 5 May 2020 23:14:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <87368fmkel.fsf_-_@x220.int.ebiederm.org>
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-05_09:2020-05-04,
 2020-05-05 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 clxscore=1011 impostorscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 phishscore=0 mlxscore=0 spamscore=0 mlxlogscore=999
 bulkscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005050131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_104500_573344_10D420C5 
X-CRM114-Status: GOOD (  25.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Michal Hocko <mhocko@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Johannes Weiner <hannes@cmpxchg.org>, Rik van Riel <riel@surriel.com>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Minchan Kim <minchan@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 LKML <linux-kernel@vger.kernel.org>, Roman Gushchin <guro@fb.com>,
 Christoph Hellwig <hch@infradead.org>, kernel-team@lge.com,
 Huang Rui <ray.huang@amd.com>,
 Linux Memory Management List <linux-mm@kvack.org>, Pavel Machek <pavel@ucw.cz>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Laura Abbott <labbott@redhat.com>,
 Mel Gorman <mgorman@techsingularity.net>,
 Christian Koenig <christian.koenig@amd.com>, Vlastimil Babka <vbabka@suse.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



On 05/05/20 3:29 am, Eric W. Biederman wrote:
> 
> Recently a patch was proposed to kimage_alloc_page to slightly alter
> the logic of how pages allocated with incompatible flags were
> detected.  The logic was being altered because the semantics of the
> page alloctor were changing yet again.
> 
> Looking at that case I realized that there is no reason for it to even
> exist.  Either the indirect page allocations and the source page
> allocations could be separated out, or I could do as I am doing now
> and simply teach the indirect pages to live in high memory.
> 
> This patch replaced pointers of type kimage_entry_t * with a new type
> kimage_entry_pos_t.  This new type holds the physical address of the
> indirect page and the offset within that page of the next indirect
> entry to write.  A special constant KIMAGE_ENTRY_POS_INVALID is added
> that kimage_image_pos_t variables that don't currently have a valid
> may be set to.
> 
> Two new functions kimage_read_entry and kimage_write_entry have been
> provided to write entries in way that works if they live in high
> memory.
> 
> The now unnecessary checks to see if a destination entry is non-zero
> and to increment it if so have been removed.  For safety new indrect
> pages are now cleared so we have a guarantee everything that has not
> been used yet is zero.  Along with this writing an extra trailing 0
> entry has been removed, as it is known all trailing entries are now 0.
> 
> With highmem support implemented for indirect pages
> kimage_image_alloc_page has been updated to always allocate
> GFP_HIGHUSER pages, and handling of pages with different
> gfp flags has been removed.
> 
> Signed-off-by: "Eric W. Biederman" <ebiederm@xmission.com>

Eric, the patch failed with data access exception on ppc64. Using the below patch on top
got me going...


diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index 45862fd..bef52f1 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -570,7 +570,12 @@ static int kimage_add_entry(struct kimage *image, kimage_entry_t entry)
 			return -ENOMEM;
 
 		ind_addr = page_to_boot_pfn(page) << PAGE_SHIFT;
-		kimage_write_entry(image->entry_pos, ind_addr | IND_INDIRECTION);
+
+		/* If it is the first entry, handle it here */
+		if (!image->head)
+			image->head = ind_addr | IND_INDIRECTION;
+		else
+			kimage_write_entry(image->entry_pos, ind_addr | IND_INDIRECTION);
 
 		clear_highpage(page);
 
@@ -623,7 +628,11 @@ int __weak machine_kexec_post_load(struct kimage *image)
 
 void kimage_terminate(struct kimage *image)
 {
-	kimage_write_entry(image->entry_pos, IND_DONE);
+	/* This could be the only entry in case of kdump */
+	if (!image->head)
+		image->head = IND_DONE;
+	else
+		kimage_write_entry(image->entry_pos, IND_DONE);
 }
 
 #define for_each_kimage_entry(image, pos, entry) 				\


Thanks
Hari

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
