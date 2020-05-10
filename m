Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C371CCB47
	for <lists+kexec@lfdr.de>; Sun, 10 May 2020 15:07:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nD8KijmvNQHkRJdNp/kOWR8OQbLXW/awNMslSs43qSM=; b=nEppt4GTjXF6kL
	uL7nJdU4eO/SyOKnCci5q5C9izNTP7GyUuSTmc045Q5Q89rhyGKz3Ly+45yln8oXWEtkgkHVOM8dk
	S3CelyOO7PJawE4fH5PM1QuNMFf4vrrsBU6BLp/nHMZTGSl3pvT/2gnlbFKiARhiT2jFOB72s1k3k
	NL5rj9Wu2S+FUfoCWhDwXaWPTf1wlw5Bu5YJ/xZVBzUfWEUjadgRBTydY/RwwRqT0y/4oGWwvbM+t
	JRUwVAgppq+wZ015D/ka8zlDrjGQcbCjpJsX6XxvU63pOn6qob7KVdLdI3HuhzSzFfwfSYNLWP8GK
	Bb5agbCx/cQwFDarNWBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXlfk-0003GH-37; Sun, 10 May 2020 13:07:12 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXlfZ-000388-EM
 for kexec@lists.infradead.org; Sun, 10 May 2020 13:07:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589116019;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zn8phY1eUuG85M8J+rkrnBbdy6ngc2Zuh3XucQHcmE0=;
 b=Wm9SxPXt0zpdmKN0wQSvOg8Pldxh03v3LS14y4Levhyc8ZrLMgd1NOpY1nk+WTe/saF5am
 HTA0M3bXfi5yC4astpdh5X8/f4rJUbL6cvpJzBnq7kXA7KNlZyLjPm1h56UyY/A6O0HPcZ
 Hgy7qb3Mr+2P69+P9eXbxBF0FrCRaB8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166-mDPZA4fiNgK4Zyaaw5aQGQ-1; Sun, 10 May 2020 09:06:56 -0400
X-MC-Unique: mDPZA4fiNgK4Zyaaw5aQGQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0FD0A80058A;
 Sun, 10 May 2020 13:06:55 +0000 (UTC)
Received: from localhost (ovpn-12-30.pek2.redhat.com [10.72.12.30])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B2F3B60BF3;
 Sun, 10 May 2020 13:06:48 +0000 (UTC)
Date: Sun, 10 May 2020 21:06:46 +0800
From: Baoquan He <bhe@redhat.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH] kexec: Discard loaded image on memory hotplug
Message-ID: <20200510130646.GA4922@MiWiFi-R3L-srv>
References: <20200501165701.24587-1-james.morse@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200501165701.24587-1-james.morse@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_060701_551656_37B61BD5 
X-CRM114-Status: GOOD (  23.23  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: David Hildenbrand <david@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Dave Young <dyoung@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi James,

On 05/01/20 at 05:57pm, James Morse wrote:
> On x86, the kexec payload contains a copy of the current memory map.
> If memory is added or removed, this copy of the memory map becomes
> stale. Getting this wrong may prevent the next kernel from booting.
> The first kernel may die if it tries to re-assemble the next kernel
> in memory that has been removed.
> 
> Discard the loaded kexec image when the memory map changes, user-space
> should reload it.

As we have discarded in your patches thread, adding a kexec service to
reload kexec should fix this. Do you mean there's still another issue
that we need fix? I may not get it clearly.

> 
> Kdump is unaffected, as it is placed within the crashkernel reserved
> memory area and only uses this memory. The stale memory map may affect
> generation of the vmcore, but the kdump kernel should be in a position
> to validate it.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
> This patch obsoletes:
>  * kexec/memory_hotplug: Prevent removal and accidental use
> https://lore.kernel.org/linux-arm-kernel/20200326180730.4754-1-james.morse@arm.com/
> 
>  kernel/kexec_core.c | 40 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
> index c19c0dad1ebe..e1901e5bd4b5 100644
> --- a/kernel/kexec_core.c
> +++ b/kernel/kexec_core.c
> @@ -12,6 +12,7 @@
>  #include <linux/slab.h>
>  #include <linux/fs.h>
>  #include <linux/kexec.h>
> +#include <linux/memory.h>
>  #include <linux/mutex.h>
>  #include <linux/list.h>
>  #include <linux/highmem.h>
> @@ -22,10 +23,12 @@
>  #include <linux/elf.h>
>  #include <linux/elfcore.h>
>  #include <linux/utsname.h>
> +#include <linux/notifier.h>
>  #include <linux/numa.h>
>  #include <linux/suspend.h>
>  #include <linux/device.h>
>  #include <linux/freezer.h>
> +#include <linux/pfn.h>
>  #include <linux/pm.h>
>  #include <linux/cpu.h>
>  #include <linux/uaccess.h>
> @@ -1219,3 +1222,40 @@ void __weak arch_kexec_protect_crashkres(void)
>  
>  void __weak arch_kexec_unprotect_crashkres(void)
>  {}
> +
> +/*
> + * If the memory layout changes, any loaded kexec image should be evicted
> + * as it may contain a copy of the (now stale) memory map. This also means
> + * we don't need to check the memory is still present when re-assembling the
> + * new kernel at machine_kexec() time.
> + */
> +static int mem_change_cb(struct notifier_block *nb, unsigned long action,
> +			 void *data)
> +{
> +	/*
> +	 * Actions are either a change, or a change being cancelled.
> +	 * A second discard for 'cancel's is harmless.
> +	 */
> +
> +	mutex_lock(&kexec_mutex);
> +	if (kexec_image) {
> +		kimage_free(xchg(&kexec_image, NULL));
> +		pr_warn("loaded image discarded due to memory hotplug");
> +	}
> +	mutex_unlock(&kexec_mutex);
> +
> +	return NOTIFY_DONE;
> +}
> +
> +static struct notifier_block mem_change_nb = {
> +	.notifier_call = mem_change_cb,
> +};
> +
> +static int __init register_mem_change_cb(void)
> +{
> +	if (IS_ENABLED(CONFIG_MEMORY_HOTPLUG))
> +		return register_memory_notifier(&mem_change_nb);
> +
> +	return 0;
> +}
> +device_initcall(register_mem_change_cb);
> -- 
> 2.26.1
> 
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
