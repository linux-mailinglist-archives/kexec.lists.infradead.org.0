Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9262D1C605D
	for <lists+kexec@lfdr.de>; Tue,  5 May 2020 20:43:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OyZkIiwPPB3yVCAjlQyGvWHHD4Ub9t+q/G9Bfkr0VOw=; b=OvysnXXcD1OPE4
	5OZqpEX85euuro3YmA/DvZKEkZh9lNO6c/v5Gs0NgynJnCmcy7oq8ZXOqzDfo4yRW2vTnIsMEpuNA
	COokjKmeRDSUhGVy6CA9xLCAI8G169wsYKzvhlDl4HAaLXpWHYLRXL+ycvNnKyWV/GyMzmFMbIw8F
	f097/pscsKjhDQOr/BXq57WubuYfFNDZjQvfRPRRgFSW68B5F6aYbaNPQKoOqaMNIb2eEEpxagJFP
	grhleYxs0N0+wIIsM+Hsk0lFPoyUbfc0qdspJ9d9H//W6z+lVF9fI17NZ79e7TP7csBp5Fn7Na0Gn
	7o3edBs4uKQgXRDSe8hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW2XY-0004T7-So; Tue, 05 May 2020 18:43:36 +0000
Received: from out03.mta.xmission.com ([166.70.13.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW2XR-0004OL-GK
 for kexec@lists.infradead.org; Tue, 05 May 2020 18:43:35 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out03.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jW2Wr-00021N-RA; Tue, 05 May 2020 12:42:54 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jW2We-0003Ln-ST; Tue, 05 May 2020 12:42:53 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Hari Bathini <hbathini@linux.ibm.com>
References: <1588130803-20527-1-git-send-email-iamjoonsoo.kim@lge.com>
 <1588130803-20527-4-git-send-email-iamjoonsoo.kim@lge.com>
 <87h7wzvjko.fsf@x220.int.ebiederm.org>
 <CAAmzW4MrD75+Prw=fQ=d5uXKgGy3urBwmxnNtoNsw5M1m9xjYQ@mail.gmail.com>
 <87ftcfpzjn.fsf@x220.int.ebiederm.org>
 <87368fmkel.fsf_-_@x220.int.ebiederm.org>
 <54a53bfe-6929-2790-9b1d-943e9f47cd62@linux.ibm.com>
Date: Tue, 05 May 2020 13:39:16 -0500
In-Reply-To: <54a53bfe-6929-2790-9b1d-943e9f47cd62@linux.ibm.com> (Hari
 Bathini's message of "Tue, 5 May 2020 23:14:32 +0530")
Message-ID: <87sggekyzv.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jW2We-0003Ln-ST; ; ; mid=<87sggekyzv.fsf@x220.int.ebiederm.org>;
 ; ; hst=in01.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX18HfHnjNf3TDWBm0cCNEfte5KG+vbwADIo=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa07.xmission.com
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,TR_Symld_Words,T_TM2_M_HEADER_IN_MSG,XMSubLong
 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.5000]
 *  1.5 TR_Symld_Words too many words that have symbols inside
 *  0.7 XMSubLong Long Subject
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa07 0; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: ; sa07 0; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: **;Hari Bathini <hbathini@linux.ibm.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 560 ms - load_scoreonly_sql: 0.03 (0.0%),
 signal_user_changed: 8 (1.4%), b_tie_ro: 7 (1.2%), parse: 0.88 (0.2%),
 extract_message_metadata: 11 (2.0%), get_uri_detail_list: 2.0 (0.4%),
 tests_pri_-1000: 14 (2.5%), tests_pri_-950: 1.21 (0.2%),
 tests_pri_-900: 1.01 (0.2%), tests_pri_-90: 109 (19.5%), check_bayes:
 107 (19.2%), b_tokenize: 10 (1.8%), b_tok_get_all: 10 (1.8%),
 b_comp_prob: 3.7 (0.7%), b_tok_touch_all: 80 (14.2%), b_finish: 0.92
 (0.2%), tests_pri_0: 403 (71.9%), check_dkim_signature: 0.54 (0.1%),
 check_dkim_adsp: 2.4 (0.4%), poll_dns_idle: 0.75 (0.1%), tests_pri_10:
 2.2 (0.4%), tests_pri_500: 7 (1.3%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [RFC][PATCH] kexec: Teach indirect pages how to live in high
 memory
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_114329_962120_FC05D770 
X-CRM114-Status: GOOD (  18.44  )
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
Cc: Michal Hocko <mhocko@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Joonsoo Kim <js1304@gmail.com>, Rik van Riel <riel@surriel.com>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Minchan Kim <minchan@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 LKML <linux-kernel@vger.kernel.org>, Roman Gushchin <guro@fb.com>,
 Christoph Hellwig <hch@infradead.org>, kernel-team@lge.com,
 Huang Rui <ray.huang@amd.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Linux Memory Management List <linux-mm@kvack.org>, Pavel Machek <pavel@ucw.cz>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Laura Abbott <labbott@redhat.com>,
 Mel Gorman <mgorman@techsingularity.net>,
 Christian Koenig <christian.koenig@amd.com>, Vlastimil Babka <vbabka@suse.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hari Bathini <hbathini@linux.ibm.com> writes:

> On 05/05/20 3:29 am, Eric W. Biederman wrote:
>> 
>> Recently a patch was proposed to kimage_alloc_page to slightly alter
>> the logic of how pages allocated with incompatible flags were
>> detected.  The logic was being altered because the semantics of the
>> page alloctor were changing yet again.
>> 
>> Looking at that case I realized that there is no reason for it to even
>> exist.  Either the indirect page allocations and the source page
>> allocations could be separated out, or I could do as I am doing now
>> and simply teach the indirect pages to live in high memory.
>> 
>> This patch replaced pointers of type kimage_entry_t * with a new type
>> kimage_entry_pos_t.  This new type holds the physical address of the
>> indirect page and the offset within that page of the next indirect
>> entry to write.  A special constant KIMAGE_ENTRY_POS_INVALID is added
>> that kimage_image_pos_t variables that don't currently have a valid
>> may be set to.
>> 
>> Two new functions kimage_read_entry and kimage_write_entry have been
>> provided to write entries in way that works if they live in high
>> memory.
>> 
>> The now unnecessary checks to see if a destination entry is non-zero
>> and to increment it if so have been removed.  For safety new indrect
>> pages are now cleared so we have a guarantee everything that has not
>> been used yet is zero.  Along with this writing an extra trailing 0
>> entry has been removed, as it is known all trailing entries are now 0.
>> 
>> With highmem support implemented for indirect pages
>> kimage_image_alloc_page has been updated to always allocate
>> GFP_HIGHUSER pages, and handling of pages with different
>> gfp flags has been removed.
>> 
>> Signed-off-by: "Eric W. Biederman" <ebiederm@xmission.com>
>
> Eric, the patch failed with data access exception on ppc64. Using the below patch on top
> got me going...

Doh!  Somehow I thought I had put that logic or something equivalent
into kimage_write_entry and it appears I did not.  I will see if I can
respin the patch.

Thank you very much for testing.

Eric


> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
> index 45862fd..bef52f1 100644
> --- a/kernel/kexec_core.c
> +++ b/kernel/kexec_core.c
> @@ -570,7 +570,12 @@ static int kimage_add_entry(struct kimage *image, kimage_entry_t entry)
>  			return -ENOMEM;
>  
>  		ind_addr = page_to_boot_pfn(page) << PAGE_SHIFT;
> -		kimage_write_entry(image->entry_pos, ind_addr | IND_INDIRECTION);
> +
> +		/* If it is the first entry, handle it here */
> +		if (!image->head)
> +			image->head = ind_addr | IND_INDIRECTION;
> +		else
> +			kimage_write_entry(image->entry_pos, ind_addr | IND_INDIRECTION);
>  
>  		clear_highpage(page);
>  
> @@ -623,7 +628,11 @@ int __weak machine_kexec_post_load(struct kimage *image)
>  
>  void kimage_terminate(struct kimage *image)
>  {
> -	kimage_write_entry(image->entry_pos, IND_DONE);
> +	/* This could be the only entry in case of kdump */
> +	if (!image->head)
> +		image->head = IND_DONE;
> +	else
> +		kimage_write_entry(image->entry_pos, IND_DONE);
>  }
>  
>  #define for_each_kimage_entry(image, pos, entry) 				\
>
>
> Thanks
> Hari

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
