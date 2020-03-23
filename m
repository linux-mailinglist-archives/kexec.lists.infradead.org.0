Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C8918F233
	for <lists+kexec@lfdr.de>; Mon, 23 Mar 2020 10:53:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MEIOdYJ7gDQjDRDvoodPbhfLAz/faeaPQXTiL9pR48A=; b=c0PcBYLJsONE6n
	PA2iugvlLF8P0LJ7ySyGyPCsu/E9jj7MawOhubCKTAKQbOVqfHmaGr1LPcVuRaWftSrgKFcDY/O4D
	JByNxuo4hpkOhOmFQHMhsxHAPKT83o6dPyh5L7BTUzpzcZ7wzlcO3ExammUSEd0PPqx8qZfP/gHVB
	YAVHt9cpstZl0MD2LwyV2r4baRW9vMgq6679j6Pu4r9zhwMQAvOmtv/h3pqx1rUb4DR5Wox62bZ9j
	6fMl27Z5rB3LGOWXSH3rOgHZp1R7SHA9KCI0lgm6Sf8L3ky40ZVvDc/Jrins1b7E15LAeoJZDUqJk
	dMVNpTRD8wpDLP5PDqIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJmI-00031a-S4; Mon, 23 Mar 2020 09:53:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJmF-000310-OA
 for kexec@lists.infradead.org; Mon, 23 Mar 2020 09:53:49 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5CDF2072D;
 Mon, 23 Mar 2020 09:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584957227;
 bh=vYQRdibAHre6Z0ZRM2+BRlR2nFJ0LeQHPRN+LvLMVBQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yWjYuu7kvYMl56D+Y8BuUPq3QPFiMCKuoOxVlWQhwAM+Wm8idPdIVqevNxw69uAAk
 ovtTcEbcF8rxF1O0XGhGCwlQyvi72gjTGLHWblk502xAlVEL1Pik4+Qi5JPX9hQqV2
 2pOn7t/JqTJs1YpmmO9wrZEG1pWDWllk+Oa0PCDY=
Date: Mon, 23 Mar 2020 10:53:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jaewon Kim <jaewon31.kim@samsung.com>
Subject: Re: [RFC PATCH v2 1/3] meminfo_extra: introduce meminfo extra
Message-ID: <20200323095344.GB425358@kroah.com>
References: <20200323080503.6224-1-jaewon31.kim@samsung.com>
 <CGME20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477@epcas1p3.samsung.com>
 <20200323080503.6224-2-jaewon31.kim@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323080503.6224-2-jaewon31.kim@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_025347_827306_B05BF02D 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: sergey.senozhatsky.work@gmail.com, leon@kernel.org, linux-mm@kvack.org,
 linux-api@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, adobriyan@gmail.com, minchan@kernel.org,
 bhe@redhat.com, ngupta@vflare.org, jaewon31.kim@gmail.com,
 akpm@linux-foundation.org, labbott@redhat.com, sumit.semwal@linaro.org,
 vbabka@suse.cz, kasong@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 05:05:01PM +0900, Jaewon Kim wrote:
> Provide APIs to drivers so that they can show its memory usage on
> /proc/meminfo_extra.
> 
> int register_meminfo_extra(atomic_long_t *val, int shift,
> 			   const char *name);
> int unregister_meminfo_extra(atomic_long_t *val);

Nit, isn't it nicer to have the subsystem name first:
	meminfo_extra_register()
	meminfo_extra_unregister()
?



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
> +	char name[NAME_BUF_SIZE];
> +	char name_pad[NAME_BUF_SIZE];
> +};
> +
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

If you have a lock, why are you needing rcu?



> +	if (error)
> +		kfree(meminfo);
> +out:
> +
> +	return error;
> +}
> +EXPORT_SYMBOL(register_meminfo_extra);

EXPORT_SYMBOL_GPL()?  I have to ask :)

thanks,

greg k-h

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
