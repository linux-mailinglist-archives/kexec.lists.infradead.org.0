Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2152F18F3FE
	for <lists+kexec@lfdr.de>; Mon, 23 Mar 2020 13:01:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DbmN0/TjnSlahpZlKfyZB7TI5brkbF3APO4dBlasjC0=; b=HF2KHPSkvL7vEg
	68Ckg0zWcCUcluoJklFNF3+JgByq0rW9bpjqw98KFlVyOoTHdUG9+9959NwUMlWh4pAbVLSKzLvCs
	I2Td5oNzYZLIjdOXh+VxljTdpj2lsyay3oDEzmIaPsHnc/DiC5rhqNKkAQw9O5JnNh8wY1pT9Apk3
	CRA+iuG8xepEPnFTLK7fnYMrI1MdKLM3/szdc9MoRaAbLNdNAgLPfUZ+rlHO7c7c2WDCExiiTnSVy
	wGLtSKIiYmDGNhdHa4jZwSsDGKc3zj0yo2oI2buTUYlb9MpH9c01Nm+JOX8FEY9LpuDC6VoAjrydo
	EWI2qup8PhLSln3kt4iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGLle-0000oG-Cd; Mon, 23 Mar 2020 12:01:18 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGLla-0000ni-Qc
 for kexec@lists.infradead.org; Mon, 23 Mar 2020 12:01:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584964871;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=P+3Ok5a+3t9Z9rUpZF1j8rUoWy/hS/ROQXyPscaiMOE=;
 b=R3u9zGhlKZK88CdtVZHr1LC7ieY6ekbeThwpWGGbSQoo6EoD1XhlwQoZoOTbOcfuIznb36
 C33zEudbPWUlh8TzxigaFDYhid2gBdQ4DM93ddiw55vLbD3pSECuFUXK7TK6iStw3nDKdT
 MBtZs7xRRlWyz6RCPnsySqw21shIkKg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-26-vHvO5dqPPBC-nWeANp4hUg-1; Mon, 23 Mar 2020 08:00:59 -0400
X-MC-Unique: vHvO5dqPPBC-nWeANp4hUg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7813E101FC60;
 Mon, 23 Mar 2020 12:00:56 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-36.pek2.redhat.com
 [10.72.12.36])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C00C194BB;
 Mon, 23 Mar 2020 12:00:49 +0000 (UTC)
Date: Mon, 23 Mar 2020 20:00:44 +0800
From: Dave Young <dyoung@redhat.com>
To: Jaewon Kim <jaewon31.kim@samsung.com>
Subject: Re: [RFC PATCH v2 1/3] meminfo_extra: introduce meminfo extra
Message-ID: <20200323120044.GA29433@dhcp-128-65.nay.redhat.com>
References: <20200323080503.6224-1-jaewon31.kim@samsung.com>
 <CGME20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477@epcas1p3.samsung.com>
 <20200323080503.6224-2-jaewon31.kim@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323080503.6224-2-jaewon31.kim@samsung.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_050114_941091_B56F455D 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sergey.senozhatsky.work@gmail.com, leon@kernel.org, linux-mm@kvack.org,
 gregkh@linuxfoundation.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, sumit.semwal@linaro.org, minchan@kernel.org,
 bhe@redhat.com, ngupta@vflare.org, linux-api@vger.kernel.org,
 jaewon31.kim@gmail.com, akpm@linux-foundation.org, labbott@redhat.com,
 adobriyan@gmail.com, vbabka@suse.cz, kasong@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Jaewon,

On 03/23/20 at 05:05pm, Jaewon Kim wrote:
> Provide APIs to drivers so that they can show its memory usage on
> /proc/meminfo_extra.
> 
> int register_meminfo_extra(atomic_long_t *val, int shift,
> 			   const char *name);
> int unregister_meminfo_extra(atomic_long_t *val);
> 
> Signed-off-by: Jaewon Kim <jaewon31.kim@samsung.com>
> ---
> v2: move to /proc/meminfo_extra as a new file, meminfo_extra.c
>     use rcu to reduce lock overhead
> v1: print info at /proc/meminfo
> ---
>  fs/proc/Makefile        |   1 +
>  fs/proc/meminfo_extra.c | 123 ++++++++++++++++++++++++++++++++++++++++++++++++
>  include/linux/mm.h      |   4 ++
>  mm/page_alloc.c         |   1 +
>  4 files changed, 129 insertions(+)
>  create mode 100644 fs/proc/meminfo_extra.c
> 
> diff --git a/fs/proc/Makefile b/fs/proc/Makefile
> index bd08616ed8ba..83d2f55591c6 100644
> --- a/fs/proc/Makefile
> +++ b/fs/proc/Makefile
> @@ -19,6 +19,7 @@ proc-y	+= devices.o
>  proc-y	+= interrupts.o
>  proc-y	+= loadavg.o
>  proc-y	+= meminfo.o
> +proc-y	+= meminfo_extra.o
>  proc-y	+= stat.o
>  proc-y	+= uptime.o
>  proc-y	+= util.o
> diff --git a/fs/proc/meminfo_extra.c b/fs/proc/meminfo_extra.c
> new file mode 100644
> index 000000000000..bd3f0d2b7fb7
> --- /dev/null
> +++ b/fs/proc/meminfo_extra.c
> @@ -0,0 +1,123 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include <linux/mm.h>
> +#include <linux/proc_fs.h>
> +#include <linux/seq_file.h>
> +#include <linux/slab.h>
> +
> +static void show_val_kb(struct seq_file *m, const char *s, unsigned long num)
> +{
> +	seq_put_decimal_ull_width(m, s, num << (PAGE_SHIFT - 10), 8);
> +	seq_write(m, " kB\n", 4);
> +}
> +
> +static LIST_HEAD(meminfo_head);
> +static DEFINE_SPINLOCK(meminfo_lock);
> +
> +#define NAME_SIZE      15
> +#define NAME_BUF_SIZE  (NAME_SIZE + 2) /* ':' and '\0' */
> +
> +struct meminfo_extra {
> +	struct list_head list;
> +	atomic_long_t *val;
> +	int shift_for_page;

Can this be simplified to use a bytes value without an extra shift?

> +	char name[NAME_BUF_SIZE];
> +	char name_pad[NAME_BUF_SIZE];
> +};
> +
There should be document about below function here.

> +int register_meminfo_extra(atomic_long_t *val, int shift, const char *name)
> +{
> +	struct meminfo_extra *meminfo, *memtemp;
> +	int len;
> +	int error = 0;
> +
> +	meminfo = kzalloc(sizeof(*meminfo), GFP_KERNEL);
> +	if (!meminfo) {
> +		error = -ENOMEM;
> +		goto out;
> +	}
> +
> +	meminfo->val = val;
> +	meminfo->shift_for_page = shift;
> +	strncpy(meminfo->name, name, NAME_SIZE);
> +	len = strlen(meminfo->name);
> +	meminfo->name[len] = ':';
> +	strncpy(meminfo->name_pad, meminfo->name, NAME_BUF_SIZE);
> +	while (++len < NAME_BUF_SIZE - 1)
> +		meminfo->name_pad[len] = ' ';
> +
> +	spin_lock(&meminfo_lock);
> +	list_for_each_entry_rcu(memtemp, &meminfo_head, list) {
> +		if (memtemp->val == val) {
> +			error = -EINVAL;
> +			break;
> +		}
> +	}
> +	if (!error)
> +		list_add_tail_rcu(&meminfo->list, &meminfo_head);
> +	spin_unlock(&meminfo_lock);
> +	if (error)
> +		kfree(meminfo);
> +out:
> +
> +	return error;
> +}
> +EXPORT_SYMBOL(register_meminfo_extra);
> +
> +int unregister_meminfo_extra(atomic_long_t *val)
> +{
> +	struct meminfo_extra *memtemp;
> +	int error = -EINVAL;
> +
> +	spin_lock(&meminfo_lock);
> +	list_for_each_entry_rcu(memtemp, &meminfo_head, list) {
> +		if (memtemp->val == val) {
> +			list_del_rcu(&memtemp->list);
> +			error = 0;
> +			break;
> +		}
> +	}
> +	spin_unlock(&meminfo_lock);
> +	if (!error) {
> +		synchronize_rcu();
> +		kfree(memtemp);
> +	}
> +
> +	return error;
> +}
> +EXPORT_SYMBOL(unregister_meminfo_extra);
> +
> +static void __meminfo_extra(struct seq_file *m)
> +{
> +	struct meminfo_extra *memtemp;
> +	unsigned long nr_page;
> +
> +	rcu_read_lock();
> +	list_for_each_entry_rcu(memtemp, &meminfo_head, list) {
> +		nr_page = (unsigned long)atomic_long_read(memtemp->val);
> +		nr_page = nr_page >> memtemp->shift_for_page;
> +		if (m)
> +			show_val_kb(m, memtemp->name_pad, nr_page);
> +		else
> +			pr_cont("%s%lukB ", memtemp->name, nr_page);

nr_page != nr_kb?

> +	}
> +	rcu_read_unlock();
> +}
> +
> +void show_meminfo_extra(void)
> +{
> +	__meminfo_extra(NULL);
> +}
> +
> +static int meminfo_extra_proc_show(struct seq_file *m, void *v)
> +{
> +	__meminfo_extra(m);
> +
> +	return 0;
> +}
> +
> +static int __init proc_meminfo_extra_init(void)
> +{
> +	proc_create_single("meminfo_extra", 0, NULL, meminfo_extra_proc_show);
> +	return 0;
> +}
> +fs_initcall(proc_meminfo_extra_init);
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index 52269e56c514..55317161ab57 100644
> --- a/include/linux/mm.h
> +++ b/include/linux/mm.h
> @@ -2898,6 +2898,10 @@ void __init setup_nr_node_ids(void);
>  static inline void setup_nr_node_ids(void) {}
>  #endif
>  
> +void show_meminfo_extra(void);
> +int register_meminfo_extra(atomic_long_t *val, int shift, const char *name);
> +int unregister_meminfo_extra(atomic_long_t *val);
> +
>  extern int memcmp_pages(struct page *page1, struct page *page2);
>  
>  static inline int pages_identical(struct page *page1, struct page *page2)
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index 3c4eb750a199..db1be9a39783 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -5229,6 +5229,7 @@ void show_free_areas(unsigned int filter, nodemask_t *nodemask)
>  	struct zone *zone;
>  	pg_data_t *pgdat;
>  
> +	show_meminfo_extra();
>  	for_each_populated_zone(zone) {
>  		if (show_mem_node_skip(filter, zone_to_nid(zone), nodemask))
>  			continue;
> -- 
> 2.13.7
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec
> 

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
