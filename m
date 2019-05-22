Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBE826A02
	for <lists+kexec@lfdr.de>; Wed, 22 May 2019 20:45:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hIfV9SxiDEKWY9fGIgLR54C3NcA2m87d/XrbSa+Q+bo=; b=evFdm8+Z9rmIz9kUWI0n+l3x2
	S+iF6UOnsBk10mW5aXOvoC+2BH3kEPZno+mX6OxqOdHbMWDA8Q6zggeu33vBKJWfAhoTJ+vMPuh/h
	5mP9+GLOH5kd/8t9OaQBlYiepjMS533VVb6S2nDTgAl8LHBFRpSIeadAe29HRSRi6UfbelG1KK+qV
	txEW66aDSNJDqLHWVe7GUsy9fySx1I7f5znSC0jWd+s5VGLlkMZyNmjNFqeYXQtn/K53Xe4vOBk5c
	Oml/IYuBCsSnQFggalj+QzWn0A0tYNe5VNFceUv8r/tpJxn99FeK9tGRLwPk2Boz2GL5EQaFB8gSZ
	F+2cbVWYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTWEQ-0001tb-BP; Wed, 22 May 2019 18:44:54 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTWEK-0001sv-U1
 for kexec@lists.infradead.org; Wed, 22 May 2019 18:44:51 +0000
Received: by mail-pl1-f195.google.com with SMTP id c5so1485746pll.11
 for <kexec@lists.infradead.org>; Wed, 22 May 2019 11:44:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=r9tffKpSR5//URn23d6p6EwP5wm+2fCjodocbQEgccA=;
 b=TtIJrAPWdwDvfW+R5KiLZNLBpSK54YY3loWqkT5cidv8kPUZ0tBVeYn+mLcJqtFWym
 +c05Jga3/UZ3DXM1dm+jqiza1Fotr85SfJV0nsxGfSUq1KTgCVSnHGn89fk+lhPNNsIx
 8t/3T/3xBOFeFeUn77S+wav5jmxUWlDXzPgsRUpzmHYISsrdQDpdoj28poZev6LKG3Xj
 IQvCNxsG41J6NfgWBmmXYqSjMAFT5ZbddkTuEHHbD40qFtrfBTGoALIE3CmghnzZCswu
 CIjeoHWzems0GRWNeFzGJCTmf4VCOhNZWCV1DSHBrWSody4Uyhp7lJGEcNYnotERdVNj
 tjAQ==
X-Gm-Message-State: APjAAAUe29ZuMUUOysOXuVJHVe/5viqLQphDHdNmIlEW6bEd/nb08lK2
 cst5VhIduikYZo4h3gRLid0GHBqiW4E=
X-Google-Smtp-Source: APXvYqz6Rgt4Rk3Sy2SLlwM2P9mp8rH8Sma820ndwxMk3MfkPcbR3wNuoWV53gO1JWjuPN2xxb0rcw==
X-Received: by 2002:a17:902:100a:: with SMTP id
 b10mr89267682pla.239.1558550687269; 
 Wed, 22 May 2019 11:44:47 -0700 (PDT)
Received: from localhost.localdomain ([110.227.182.225])
 by smtp.gmail.com with ESMTPSA id l65sm42599576pfb.7.2019.05.22.11.44.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 11:44:46 -0700 (PDT)
Subject: Re: [PATCH v2] vmcore: Add a kernel cmdline vmcore_device_dump
To: Kairui Song <kasong@redhat.com>, linux-kernel@vger.kernel.org
References: <20190520061834.32231-1-kasong@redhat.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <0c0fb7af-f386-bde1-46f6-1afa29782243@redhat.com>
Date: Thu, 23 May 2019 00:14:39 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190520061834.32231-1-kasong@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_114448_972780_F238D154 
X-CRM114-Status: GOOD (  29.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "David S . Miller" <davem@davemloft.net>,
 Rahul Lakkireddy <rahul.lakkireddy@chelsio.com>,
 Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dave Young <dyoung@redhat.com>,
 Alexey Dobriyan <adobriyan@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 05/20/2019 11:48 AM, Kairui Song wrote:
> Since commit 2724273e8fd0 ('vmcore: add API to collect hardware dump in
> second kernel'), drivers is allowed to add device related dump data to
> vmcore as they want by using the device dump API. This have a potential
> issue, the data is stored in memory, drivers may append too much data
> and use too much memory. The vmcore is typically used in a kdump kernel
> which runs in a pre-reserved small chunk of memory. So as a result it
> will make kdump unusable at all due to OOM issues.
> 
> So introduce new vmcore_device_dump= kernel parameter, and disable
> device dump by default. User can enable it only if device dump data is
> required for debugging, and have the chance to increase the kdump
> reserved memory accordingly before device dump fails kdump.
> 
> Signed-off-by: Kairui Song <kasong@redhat.com>
> ---
>   Update from V1:
>    - Use bool parameter to turn it on/off instead of letting user give
>      the size limit. Size of device dump is hard to determine.
> 
>   Documentation/admin-guide/kernel-parameters.txt | 15 +++++++++++++++
>   fs/proc/vmcore.c                                | 13 +++++++++++++
>   2 files changed, 28 insertions(+)
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index 43176340c73d..2d48e39fd080 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -5062,6 +5062,21 @@
>   			decrease the size and leave more room for directly
>   			mapped kernel RAM.
>   
> +	vmcore_device_dump=
> +			[VMCORE]
> +			Format: {"off" | "on"}
> +			If CONFIG_PROC_VMCORE_DEVICE_DUMP is set,
> +			this parameter allows enable or disable device dump
> +			for vmcore.

We can add a simpler description here, something like:
			Depends on CONFIG_PROC_VMCORE_DEVICE_DUMP

> +			Device dump allows drivers to append dump data to
> +			vmcore so you can collect driver specified debug info.
> +			Note that the drivers could append the data without
> +			any limit, and the data is stored in memory, this may
> +			bring a significant memory stress. If you want to turn
> +			on this option, make sure you have reserved enough memory
> +			with crashkernel= parameter.
> +			default: off

... and massage the rest of text accordingly.

Better to also modify the help text for 'PROC_VMCORE_DEVICE_DUMP' config 
option defined in 'fs/proc/Kconfig'. Something like:

config PROC_VMCORE_DEVICE_DUMP
	bool "Device Hardware/Firmware Log Collection"
<..snip..>	
	  If you say Y here, the collected device dumps will be added
	  as ELF notes to /proc/vmcore.

	  If this option is selected, device dump collection can still be 
disabled by passing vmcore_device_dump=off to the kernel.

See config INTEL_IOMMU_DEFAULT_ON in 'drivers/iommu/Kconfig' as an example.

>   	vmcp_cma=nn[MG]	[KNL,S390]
>   			Sets the memory size reserved for contiguous memory
>   			allocations for the vmcp device driver.
> diff --git a/fs/proc/vmcore.c b/fs/proc/vmcore.c
> index 3fe90443c1bb..d1b608b0efad 100644
> --- a/fs/proc/vmcore.c
> +++ b/fs/proc/vmcore.c
> @@ -53,6 +53,8 @@ static struct proc_dir_entry *proc_vmcore;
>   /* Device Dump list and mutex to synchronize access to list */
>   static LIST_HEAD(vmcoredd_list);
>   static DEFINE_MUTEX(vmcoredd_mutex);
> +
> +static bool vmcoredd_enabled;
>   #endif /* CONFIG_PROC_VMCORE_DEVICE_DUMP */
>   
>   /* Device Dump Size */
> @@ -1451,6 +1453,11 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
>   	size_t data_size;
>   	int ret;
>   
> +	if (!vmcoredd_enabled) {
> +		pr_err_once("Device dump is disabled\n");
> +		return -EINVAL;
> +	}
> +
>   	if (!data || !strlen(data->dump_name) ||
>   	    !data->vmcoredd_callback || !data->size)
>   		return -EINVAL;
> @@ -1502,6 +1509,12 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
>   	return ret;
>   }
>   EXPORT_SYMBOL(vmcore_add_device_dump);
> +
> +static int __init vmcoredd_parse_cmdline(char *arg)
> +{
> +	return kstrtobool(arg, &vmcoredd_enabled);
> +}
> +__setup("vmcore_device_dump=", vmcoredd_parse_cmdline);
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
