Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BD519C60
	for <lists+kexec@lfdr.de>; Fri, 10 May 2019 13:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xNXxFGkBIPV4d11eSnlNV3E+Fxp8JE7vttKWuOieKRA=; b=N9nOC02UXR0Rra+cd3pbKWJsU
	vpdMlIrl1x/NctPTAgqznA/Bd3CPqXJLh+Vge7xX9jJef277JkWUtlj11fjqOwIr25052yK69jEu3
	5IdhOzMs5NlUJ7gUV/FdYMxTEPq23oFrXkSi4JAGwarAOpHqML1zwz70kxLQRxNdqHsskHUloXKqo
	z7ziE8bJfXhjkJavT3m8wkZjELe+UYECKOdFCvxKPHoT/YMS0RncxA7c6vUpvLNqV2BoqPkQ98rdU
	znKUpm6Ak+UxE8j6H8e3XNUHyqWPKGQEQ5e2g53vl8NAZaqei775T4kfe8uyTgl/CaCV0YpK3wWos
	IWNt0OjQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP3Wn-0005np-8e; Fri, 10 May 2019 11:17:25 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP3Wj-0005nE-5L
 for kexec@lists.infradead.org; Fri, 10 May 2019 11:17:23 +0000
Received: by mail-pg1-f196.google.com with SMTP id c13so2893615pgt.1
 for <kexec@lists.infradead.org>; Fri, 10 May 2019 04:17:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qU0tD7CT9Jm6uTpFuovdKUn0C14kT62XFFwJuIH/foI=;
 b=pw9pqcLiA9dIUaPWZA5UIzIkJhIVR4ARdxQyiUnIJz2D8X0qec+aVTYj9m/5wUfiIf
 2CPMy4MDO1SsfuZPLEmqdmaA5s6IjYh79b388trgCF+SecIHTa8KCcio0Pb/sYho8f+D
 MS9CgmAgb0lRl+6Fs2E/XzU263XxenMkBKe+V/lastlUauPedVmg4aHC/74/SzNAQiVL
 V138dYjrB9lCYHJN2RPBSWY8/lZ7YyUZxHwrFkdhxPdE2B11RhdpTPavGS0PNLR7wASW
 jbIlsJNp5UsVm62uz5KkHeVd/jfKK+r8v1TgcFkOPAiFDXD9nlOZ4k/htfcYScnb2yC5
 zzCQ==
X-Gm-Message-State: APjAAAWFPjOwC4pox422qkGVQ0kb08vYaem4r3TxZn7ZXGAT2+dbTktt
 iIuAsqta80etbVALySxvQiQE4w==
X-Google-Smtp-Source: APXvYqyLlkU59Hz/VAMMpcr4TvIoLz9Fngzmojb8lnLlu0nkRmpen8xsdXs6sBFaFfviP8dTsioz0Q==
X-Received: by 2002:aa7:800e:: with SMTP id j14mr12906339pfi.157.1557487040094; 
 Fri, 10 May 2019 04:17:20 -0700 (PDT)
Received: from localhost.localdomain ([110.227.183.79])
 by smtp.gmail.com with ESMTPSA id g2sm8819491pfd.134.2019.05.10.04.17.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 04:17:18 -0700 (PDT)
Subject: Re: [RFC PATCH] vmcore: Add a kernel cmdline device_dump_limit
To: Kairui Song <kasong@redhat.com>, linux-kernel@vger.kernel.org
References: <20190510102051.25647-1-kasong@redhat.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <4f453ec6-67a6-2c8f-2aab-acb54ae55645@redhat.com>
Date: Fri, 10 May 2019 16:47:13 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190510102051.25647-1-kasong@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_041721_205420_5605B536 
X-CRM114-Status: GOOD (  27.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Rahul Lakkireddy <rahul.lakkireddy@chelsio.com>,
 Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dave Young <dyoung@redhat.com>,
 "David S . Miller" <davem@davemloft.net>, Ganesh Goudar <ganeshgr@chelsio.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Kairui,

Thanks for the patch. Please see my comments in-line:

On 05/10/2019 03:50 PM, Kairui Song wrote:
> Device dump allow drivers to add device related dump data to vmcore as
> they want. This have a potential issue, the data is stored in memory,
> drivers may append too much data and use too much memory. The vmcore is
> typically used in a kdump kernel which runs in a pre-reserved small
> chunk of memory. So as a result it will make kdump unusable at all due
> to OOM issues.
> 
> So introduce new device_dump_limit= kernel parameter, and set the
> default limit to 0, so device dump is not enabled unless user specify
> the accetable maxiam 

       ^^^^ acceptable maximum

> memory usage for device dump data. In this way user
> will also have the chance to adjust the kdump reserved memory
> accordingly.

Hmmm., this doesn't give much confidence with the 
PROC_VMCORE_DEVICE_DUMP feature in its current shape. Rather shouldn't 
we be enabling config PROC_VMCORE_DEVICE_DUMP only under EXPERT mode for 
now, considering that this feature needs further thrashing and testing 
with real setups including platforms where drivers append large amounts 
of data to vmcore:

diff --git a/fs/proc/Kconfig b/fs/proc/Kconfig
index 817c02b13b1d..c47a12cf7fc0 100644
--- a/fs/proc/Kconfig
+++ b/fs/proc/Kconfig
@@ -45,7 +45,7 @@ config PROC_VMCORE
          Exports the dump image of crashed kernel in ELF format.

  config PROC_VMCORE_DEVICE_DUMP
-       bool "Device Hardware/Firmware Log Collection"
+       bool "Device Hardware/Firmware Log Collection" if EXPERT
         depends on PROC_VMCORE
         default n
         help
@@ -59,6 +59,12 @@ config PROC_VMCORE_DEVICE_DUMP
           If you say Y here, the collected device dumps will be added
           as ELF notes to /proc/vmcore.

+         Considering that there can be device drivers which append
+         large amounts of data to vmcore, you should say N here unless
+         you are reserving a large chunk of memory for crashdump
+         kernel, because otherwise the crashdump kernel might become
+         unusable due to OOM issues.
+

May be you can add a 'Fixes:' tag here.

> Signed-off-by: Kairui Song <kasong@redhat.com>
> ---
>   fs/proc/vmcore.c | 20 ++++++++++++++++++++
>   1 file changed, 20 insertions(+)
> 
> diff --git a/fs/proc/vmcore.c b/fs/proc/vmcore.c
> index 3fe90443c1bb..e28695ef2439 100644
> --- a/fs/proc/vmcore.c
> +++ b/fs/proc/vmcore.c
> @@ -53,6 +53,9 @@ static struct proc_dir_entry *proc_vmcore;
>   /* Device Dump list and mutex to synchronize access to list */
>   static LIST_HEAD(vmcoredd_list);
>   static DEFINE_MUTEX(vmcoredd_mutex);
> +
> +/* Device Dump Limit */
> +static size_t vmcoredd_limit;
>   #endif /* CONFIG_PROC_VMCORE_DEVICE_DUMP */
>   
>   /* Device Dump Size */
> @@ -1465,6 +1468,11 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
>   	data_size = roundup(sizeof(struct vmcoredd_header) + data->size,
>   			    PAGE_SIZE);
>   
> +	if (vmcoredd_orig_sz + data_size >= vmcoredd_limit) {
> +		ret = -ENOMEM;

Should we be adding a WARN() here to let the user know that the device 
dump data will not be available in vmcore?

> +		goto out_err;
> +	}
> +
>   	/* Allocate buffer for driver's to write their dumps */
>   	buf = vmcore_alloc_buf(data_size);
>   	if (!buf) {
> @@ -1502,6 +1510,18 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
>   	return ret;
>   }
>   EXPORT_SYMBOL(vmcore_add_device_dump);
> +
> +static int __init parse_vmcoredd_limit(char *arg)
> +{
> +	char *end;
> +
> +	if (!arg)
> +		return -EINVAL;
> +	vmcoredd_limit = memparse(arg, &end);
> +	return end > arg ? 0 : -EINVAL;
> +
> +}
> +__setup("device_dump_limit=", parse_vmcoredd_limit);

We should be adding this boot argument and its description to 
'Documentation/admin-guide/kernel-parameters.txt'

>   #endif /* CONFIG_PROC_VMCORE_DEVICE_DUMP */
>   
>   /* Free all dumps in vmcore device dump list */
> 

Thanks,
Bhupesh

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
