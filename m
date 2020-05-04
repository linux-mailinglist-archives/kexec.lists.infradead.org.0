Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C5F1C4956
	for <lists+kexec@lfdr.de>; Tue,  5 May 2020 00:03:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QOw6r/ERthqLyGMEt7+aivNOrXcOySfmmESRUKp0kiI=; b=Op13wvg9bVC6Nj
	uLXkeZwt8fbxC4FMgmHqzTmSXO5TOvEc6QRNWba8Fhhh2MVH8A+fbveUxLYtwsT2DwJSzB/I5Uea6
	AY54BRl+UctIN4bZNhHZykM/Ufk1+QAgxr6p+jhNpPRhIVHnPqbqLSPCjR5z54063Jpkj0CdsM5l8
	9GZNpLN4iCc2KL5dBT5/u6Wc4jZO8d6y/lkYWJ13HrHV/y0vhyfXkf2fTgD49+VOvv8/ZftB6wGnS
	uzdgVyiDo7pEQl/ypi6bp4Lmp5tQ/aO+ClWq8rOKYsurd9n8fJNi0jxG68m5YLfOO+K+AQ7Wx3vQh
	4+0Fwr4y7YaIHsnUun9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVjB2-0002O9-3K; Mon, 04 May 2020 22:03:04 +0000
Received: from out03.mta.xmission.com ([166.70.13.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVjAy-0002LA-Bj
 for kexec@lists.infradead.org; Mon, 04 May 2020 22:03:02 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out03.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jVjAp-0000jK-I2; Mon, 04 May 2020 16:02:51 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jVjAb-0001O9-V1; Mon, 04 May 2020 16:02:51 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Joonsoo Kim <js1304@gmail.com>
References: <1588130803-20527-1-git-send-email-iamjoonsoo.kim@lge.com>
 <1588130803-20527-4-git-send-email-iamjoonsoo.kim@lge.com>
 <87h7wzvjko.fsf@x220.int.ebiederm.org>
 <CAAmzW4MrD75+Prw=fQ=d5uXKgGy3urBwmxnNtoNsw5M1m9xjYQ@mail.gmail.com>
 <87ftcfpzjn.fsf@x220.int.ebiederm.org>
Date: Mon, 04 May 2020 16:59:14 -0500
In-Reply-To: <87ftcfpzjn.fsf@x220.int.ebiederm.org> (Eric W. Biederman's
 message of "Mon, 04 May 2020 09:03:56 -0500")
Message-ID: <87368fmkel.fsf_-_@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jVjAb-0001O9-V1; ; ;
 mid=<87368fmkel.fsf_-_@x220.int.ebiederm.org>; ; ; hst=in01.mta.xmission.com; ;
 ; ip=68.227.160.95; ; ; frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX1/u48Pr0HiQim87969boyxx6YAssOJg8Ms=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa02.xmission.com
X-Spam-Level: ***
X-Spam-Status: No, score=3.0 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,TR_Symld_Words,XMSubLong,XM_Sft_Co_L33T
 autolearn=disabled version=3.4.2
X-Spam-Virus: No
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.5000] *  0.7 XMSubLong Long Subject
 *  1.5 TR_Symld_Words too many words that have symbols inside
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa02 0; Body=1 Fuz1=1 Fuz2=1]
 *  1.0 XM_Sft_Co_L33T No description available.
X-Spam-DCC: ; sa02 0; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ***;Joonsoo Kim <js1304@gmail.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 1083 ms - load_scoreonly_sql: 0.03 (0.0%),
 signal_user_changed: 3.9 (0.4%), b_tie_ro: 2.6 (0.2%), parse: 1.03
 (0.1%), extract_message_metadata: 12 (1.1%), get_uri_detail_list: 3.6
 (0.3%), tests_pri_-1000: 11 (1.0%), tests_pri_-950: 1.04 (0.1%),
 tests_pri_-900: 0.85 (0.1%), tests_pri_-90: 484 (44.7%), check_bayes:
 483 (44.6%), b_tokenize: 15 (1.4%), b_tok_get_all: 173 (15.9%),
 b_comp_prob: 2.5 (0.2%), b_tok_touch_all: 289 (26.7%), b_finish: 0.66
 (0.1%), tests_pri_0: 560 (51.6%), check_dkim_signature: 0.53 (0.0%),
 check_dkim_adsp: 2.6 (0.2%), poll_dns_idle: 1.29 (0.1%), tests_pri_10:
 1.80 (0.2%), tests_pri_500: 6 (0.5%), rewrite_mail: 0.00 (0.0%)
Subject: [RFC][PATCH] kexec: Teach indirect pages how to live in high memory
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_150300_431446_3817D4EB 
X-CRM114-Status: GOOD (  23.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kernel-team@lge.com, Michal Hocko <mhocko@suse.com>,
 Minchan Kim <minchan@kernel.org>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Rik van Riel <riel@surriel.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 LKML <linux-kernel@vger.kernel.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Christoph Hellwig <hch@infradead.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Huang Rui <ray.huang@amd.com>, Kexec Mailing List <kexec@lists.infradead.org>,
 Pavel Machek <pavel@ucw.cz>, Johannes Weiner <hannes@cmpxchg.org>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Mel Gorman <mgorman@techsingularity.net>, Roman Gushchin <guro@fb.com>,
 Vlastimil Babka <vbabka@suse.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


Recently a patch was proposed to kimage_alloc_page to slightly alter
the logic of how pages allocated with incompatible flags were
detected.  The logic was being altered because the semantics of the
page alloctor were changing yet again.

Looking at that case I realized that there is no reason for it to even
exist.  Either the indirect page allocations and the source page
allocations could be separated out, or I could do as I am doing now
and simply teach the indirect pages to live in high memory.

This patch replaced pointers of type kimage_entry_t * with a new type
kimage_entry_pos_t.  This new type holds the physical address of the
indirect page and the offset within that page of the next indirect
entry to write.  A special constant KIMAGE_ENTRY_POS_INVALID is added
that kimage_image_pos_t variables that don't currently have a valid
may be set to.

Two new functions kimage_read_entry and kimage_write_entry have been
provided to write entries in way that works if they live in high
memory.

The now unnecessary checks to see if a destination entry is non-zero
and to increment it if so have been removed.  For safety new indrect
pages are now cleared so we have a guarantee everything that has not
been used yet is zero.  Along with this writing an extra trailing 0
entry has been removed, as it is known all trailing entries are now 0.

With highmem support implemented for indirect pages
kimage_image_alloc_page has been updated to always allocate
GFP_HIGHUSER pages, and handling of pages with different
gfp flags has been removed.

Signed-off-by: "Eric W. Biederman" <ebiederm@xmission.com>
---

I have not done more than compile test this but I think this will remove
that tricky case in the kexec highmem support.

Any comments?  Does anyone have a 32bit highmem system where they can
test this code?  I can probably do something with a 32bit x86 kernel
but it has been a few days.

Does anyone know how we can more effectively allocate memory below
whatever the maximum limit that kexec supports? Typically below
4G on 32bit and below 2^64 on 64bits.

Eric

 include/linux/kexec.h |   5 +-
 kernel/kexec_core.c   | 119 +++++++++++++++++++++++++-----------------
 2 files changed, 73 insertions(+), 51 deletions(-)

diff --git a/include/linux/kexec.h b/include/linux/kexec.h
index 1776eb2e43a4..6d3f6f4cb926 100644
--- a/include/linux/kexec.h
+++ b/include/linux/kexec.h
@@ -69,6 +69,8 @@
  */
 
 typedef unsigned long kimage_entry_t;
+typedef unsigned long kimage_entry_pos_t;
+#define KIMAGE_ENTRY_POS_INVALID ((kimage_entry_pos_t)-2)
 
 struct kexec_segment {
 	/*
@@ -243,8 +245,7 @@ int kexec_elf_probe(const char *buf, unsigned long len);
 #endif
 struct kimage {
 	kimage_entry_t head;
-	kimage_entry_t *entry;
-	kimage_entry_t *last_entry;
+	kimage_entry_pos_t entry_pos;
 
 	unsigned long start;
 	struct page *control_code_page;
diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index c19c0dad1ebe..45862fda9e60 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -142,7 +142,6 @@ EXPORT_SYMBOL_GPL(kexec_crash_loaded);
 #define PAGE_COUNT(x) (((x) + PAGE_SIZE - 1) >> PAGE_SHIFT)
 
 static struct page *kimage_alloc_page(struct kimage *image,
-				       gfp_t gfp_mask,
 				       unsigned long dest);
 
 int sanity_check_segment_list(struct kimage *image)
@@ -261,8 +260,7 @@ struct kimage *do_kimage_alloc_init(void)
 		return NULL;
 
 	image->head = 0;
-	image->entry = &image->head;
-	image->last_entry = &image->head;
+	image->entry_pos = KIMAGE_ENTRY_POS_INVALID;
 	image->control_page = ~0; /* By default this does not apply */
 	image->type = KEXEC_TYPE_DEFAULT;
 
@@ -531,28 +529,56 @@ int kimage_crash_copy_vmcoreinfo(struct kimage *image)
 	return 0;
 }
 
-static int kimage_add_entry(struct kimage *image, kimage_entry_t entry)
+static kimage_entry_t kimage_read_entry(kimage_entry_pos_t pos)
 {
-	if (*image->entry != 0)
-		image->entry++;
+	kimage_entry_t *arr, entry;
+	struct page *page;
+	unsigned long off;
+
+	page = boot_pfn_to_page(pos >> PAGE_SHIFT);
+	off = pos & ~PAGE_MASK;
+	arr = kmap_atomic(page);
+	entry = arr[off];
+	kunmap_atomic(arr);
+
+	return entry;
+}
 
-	if (image->entry == image->last_entry) {
-		kimage_entry_t *ind_page;
+static void kimage_write_entry(kimage_entry_pos_t pos, kimage_entry_t entry)
+{
+	kimage_entry_t *arr;
+	struct page *page;
+	unsigned long off;
+
+	page = boot_pfn_to_page(pos >> PAGE_SHIFT);
+	off = pos & ~PAGE_MASK;
+	arr = kmap_atomic(page);
+	arr[off] = entry;
+	kunmap_atomic(arr);
+}
+
+#define LAST_KIMAGE_ENTRY ((PAGE_SIZE/sizeof(kimage_entry_t)) - 1)
+static int kimage_add_entry(struct kimage *image, kimage_entry_t entry)
+{
+	if ((image->entry_pos == KIMAGE_ENTRY_POS_INVALID) ||
+	    ((image->entry_pos & ~PAGE_MASK) == LAST_KIMAGE_ENTRY)) {
+		unsigned long ind_addr;
 		struct page *page;
 
-		page = kimage_alloc_page(image, GFP_KERNEL, KIMAGE_NO_DEST);
+		page = kimage_alloc_page(image, KIMAGE_NO_DEST);
 		if (!page)
 			return -ENOMEM;
 
-		ind_page = page_address(page);
-		*image->entry = virt_to_boot_phys(ind_page) | IND_INDIRECTION;
-		image->entry = ind_page;
-		image->last_entry = ind_page +
-				      ((PAGE_SIZE/sizeof(kimage_entry_t)) - 1);
+		ind_addr = page_to_boot_pfn(page) << PAGE_SHIFT;
+		kimage_write_entry(image->entry_pos, ind_addr | IND_INDIRECTION);
+
+		clear_highpage(page);
+
+		image->entry_pos = ind_addr;
 	}
-	*image->entry = entry;
-	image->entry++;
-	*image->entry = 0;
+
+	kimage_write_entry(image->entry_pos, entry);
+	image->entry_pos++;
 
 	return 0;
 }
@@ -597,16 +623,14 @@ int __weak machine_kexec_post_load(struct kimage *image)
 
 void kimage_terminate(struct kimage *image)
 {
-	if (*image->entry != 0)
-		image->entry++;
-
-	*image->entry = IND_DONE;
+	kimage_write_entry(image->entry_pos, IND_DONE);
 }
 
-#define for_each_kimage_entry(image, ptr, entry) \
-	for (ptr = &image->head; (entry = *ptr) && !(entry & IND_DONE); \
-		ptr = (entry & IND_INDIRECTION) ? \
-			boot_phys_to_virt((entry & PAGE_MASK)) : ptr + 1)
+#define for_each_kimage_entry(image, pos, entry) 				\
+	for (entry = image->head, pos = KIMAGE_ENTRY_POS_INVALID;		\
+	     entry && !(entry & IND_DONE);					\
+	     pos = ((entry & IND_INDIRECTION) ? (entry & PAGE_MASK) : pos + 1), \
+	     entry = kimage_read_entry(pos))
 
 static void kimage_free_entry(kimage_entry_t entry)
 {
@@ -618,8 +642,8 @@ static void kimage_free_entry(kimage_entry_t entry)
 
 void kimage_free(struct kimage *image)
 {
-	kimage_entry_t *ptr, entry;
-	kimage_entry_t ind = 0;
+	kimage_entry_t entry, ind = 0;
+	kimage_entry_pos_t pos;
 
 	if (!image)
 		return;
@@ -630,7 +654,7 @@ void kimage_free(struct kimage *image)
 	}
 
 	kimage_free_extra_pages(image);
-	for_each_kimage_entry(image, ptr, entry) {
+	for_each_kimage_entry(image, pos, entry) {
 		if (entry & IND_INDIRECTION) {
 			/* Free the previous indirection page */
 			if (ind & IND_INDIRECTION)
@@ -662,27 +686,27 @@ void kimage_free(struct kimage *image)
 	kfree(image);
 }
 
-static kimage_entry_t *kimage_dst_used(struct kimage *image,
-					unsigned long page)
+static kimage_entry_pos_t kimage_dst_used(struct kimage *image,
+					  unsigned long page)
 {
-	kimage_entry_t *ptr, entry;
 	unsigned long destination = 0;
+	kimage_entry_pos_t pos;
+	kimage_entry_t entry;
 
-	for_each_kimage_entry(image, ptr, entry) {
+	for_each_kimage_entry(image, pos, entry) {
 		if (entry & IND_DESTINATION)
 			destination = entry & PAGE_MASK;
 		else if (entry & IND_SOURCE) {
 			if (page == destination)
-				return ptr;
+				return pos;
 			destination += PAGE_SIZE;
 		}
 	}
 
-	return NULL;
+	return KIMAGE_ENTRY_POS_INVALID;
 }
 
 static struct page *kimage_alloc_page(struct kimage *image,
-					gfp_t gfp_mask,
 					unsigned long destination)
 {
 	/*
@@ -719,10 +743,10 @@ static struct page *kimage_alloc_page(struct kimage *image,
 	}
 	page = NULL;
 	while (1) {
-		kimage_entry_t *old;
+		kimage_entry_pos_t pos;
 
 		/* Allocate a page, if we run out of memory give up */
-		page = kimage_alloc_pages(gfp_mask, 0);
+		page = kimage_alloc_pages(GFP_HIGHUSER, 0);
 		if (!page)
 			return NULL;
 		/* If the page cannot be used file it away */
@@ -747,26 +771,23 @@ static struct page *kimage_alloc_page(struct kimage *image,
 		 * See if there is already a source page for this
 		 * destination page.  And if so swap the source pages.
 		 */
-		old = kimage_dst_used(image, addr);
-		if (old) {
+		pos = kimage_dst_used(image, addr);
+		if (pos != KIMAGE_ENTRY_POS_INVALID) {
 			/* If so move it */
+			kimage_entry_t old, replacement;
 			unsigned long old_addr;
 			struct page *old_page;
 
-			old_addr = *old & PAGE_MASK;
+			old = kimage_read_entry(pos);
+			old_addr = old & PAGE_MASK;
 			old_page = boot_pfn_to_page(old_addr >> PAGE_SHIFT);
 			copy_highpage(page, old_page);
-			*old = addr | (*old & ~PAGE_MASK);
+			replacement = addr | (old & ~PAGE_MASK);
+			kimage_write_entry(pos, replacement);
 
 			/* The old page I have found cannot be a
-			 * destination page, so return it if it's
-			 * gfp_flags honor the ones passed in.
+			 * destination page, so return it.
 			 */
-			if (!(gfp_mask & __GFP_HIGHMEM) &&
-			    PageHighMem(old_page)) {
-				kimage_free_pages(old_page);
-				continue;
-			}
 			addr = old_addr;
 			page = old_page;
 			break;
@@ -805,7 +826,7 @@ static int kimage_load_normal_segment(struct kimage *image,
 		char *ptr;
 		size_t uchunk, mchunk;
 
-		page = kimage_alloc_page(image, GFP_HIGHUSER, maddr);
+		page = kimage_alloc_page(image, maddr);
 		if (!page) {
 			result  = -ENOMEM;
 			goto out;
-- 
2.25.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
