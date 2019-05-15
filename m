Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED7F1E7CF
	for <lists+kexec@lfdr.de>; Wed, 15 May 2019 07:07:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HBoSSyN8iWtxaEQwCICSfn7tG3Qspts7/FlqDmKqqxw=; b=X09lg3KEdZO34IDL8eDKBOe+B
	mUJNzZlFk/UhW2xzprqGxlDVnhKBojZBrMF8lWNbuelh366iR4gdaczs2vbAXaIpZHkBeKcfk56+H
	MEsFg3BxbyBBtydv/PlrQqpP9SeU6NdVVsMw9qtMGbDIoD22vLlyiEr+bD07jSGisWgrs+WzEng4V
	IhZhB2sop+e2O/6jsxWQ9Whh5fHFSxx0YT+ohbtw+zk9ifuljd+QEOdbF9fksnHQPHM1YBWJynds+
	xSCyvcFb2kI2Iddnh6haDEjQuKGxLNDjX8Pgg3A0mO3WU3YvlrzzknrXcQBtvUM1p1qEW9yi1LNJB
	npafHVWHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQm7v-0007mN-HC; Wed, 15 May 2019 05:06:51 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQm7f-0007f5-Br
 for kexec@lists.infradead.org; Wed, 15 May 2019 05:06:38 +0000
Received: by mail-pl1-f195.google.com with SMTP id f12so709252plt.8
 for <kexec@lists.infradead.org>; Tue, 14 May 2019 22:06:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+qom0Qn6LwXg8UJkqiMrz8BQabBvoo+xpSl9SHnkWOY=;
 b=BtN6AEGRawo9BqOYINgb2pft4u5Us+4yDjFN44ROrNnkQGnczYJw8hRt+PfIUa/iIU
 Sxhbg2dnZwyZ+SbEIB5O0Fw3S7Uk4DyHSVU8JipXMyvgpVkV+8sF6lbftFLhlqfyBaeE
 5NhnRmjzGaELlJGqnRlFUMhv9I2Ox8/JvphvPDD1+OEB/dZ6PIWkJIO1m49OmgkJxN1r
 KwLopae6ECiuEcbolMiv2i/pbDIhEpzMue7l+tmo2GecFngYDvQKDH/ZBewcVG7a6hG3
 Sju0/33+SFuVb3hKFhBkJoIRXqKiqifG073C9rLqkpeZkcVax2e6O7JGd3E+4CdL72tW
 CjyA==
X-Gm-Message-State: APjAAAXuhYGdKR8pUG2MxaHaIA9sggBPn7wtjGhiysr7hckK8aekTU2F
 +lGV2M8pI8I9f20LKjnlAFVURA==
X-Google-Smtp-Source: APXvYqydcRf68wup3tmXCJXop6KI1ZxTGUxdyH6wtMYn4HOqUMhx5MO0r5tKJnQQFTgrfoAnruhVow==
X-Received: by 2002:a17:902:2e83:: with SMTP id
 r3mr26825633plb.139.1557896794167; 
 Tue, 14 May 2019 22:06:34 -0700 (PDT)
Received: from localhost.localdomain ([106.215.121.117])
 by smtp.gmail.com with ESMTPSA id v81sm1354825pfa.16.2019.05.14.22.06.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 22:06:32 -0700 (PDT)
Subject: Re: [PATCH 0/4] support reserving crashkernel above 4G on arm64 kdump
To: Chen Zhou <chenzhou10@huawei.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, akpm@linux-foundation.org, ard.biesheuvel@linaro.org,
 rppt@linux.ibm.com, tglx@linutronix.de, mingo@redhat.com, bp@alien8.de,
 ebiederm@xmission.com
References: <20190507035058.63992-1-chenzhou10@huawei.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <a9d017d0-82d3-3e5f-4af2-4c611393106d@redhat.com>
Date: Wed, 15 May 2019 10:36:24 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190507035058.63992-1-chenzhou10@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_220635_408802_7C0EA3E3 
X-CRM114-Status: GOOD (  23.20  )
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
Cc: wangkefeng.wang@huawei.com, takahiro.akashi@linaro.org,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, horms@verge.net.au,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

+Cc kexec-list.

Hi Chen,

I think we are still in the quiet period of the merge cycle, but this is 
a change which will be useful for systems like HPE Apollo where we are 
looking at reserving crashkernel across a larger range.

Some comments inline and in respective patch threads..

On 05/07/2019 09:20 AM, Chen Zhou wrote:
> This patch series enable reserving crashkernel on high memory in arm64.

Please fix the patch subject, it should be v5.
Also please Cc the kexec-list (kexec@lists.infradead.org) for future 
versions to allow wider review of the patchset.

> We use crashkernel=X to reserve crashkernel below 4G, which will fail
> when there is no enough memory. Currently, crashkernel=Y@X can be used
> to reserve crashkernel above 4G, in this case, if swiotlb or DMA buffers
> are requierd, capture kernel will boot failure because of no low memory.

... ^^ required

s/capture kernel will boot failure because of no low memory./capture 
kernel boot will fail because there is no low memory available for 
allocation.

> When crashkernel is reserved above 4G in memory, kernel should reserve
> some amount of low memory for swiotlb and some DMA buffers. So there may
> be two crash kernel regions, one is below 4G, the other is above 4G. Then
> Crash dump kernel reads more than one crash kernel regions via a dtb
> property under node /chosen,
> linux,usable-memory-range = <BASE1 SIZE1 [BASE2 SIZE2]>.

Please use consistent naming for the second kernel, better to use crash 
dump kernel.

I have tested this on my HPE Apollo machine and with 
crashkernel=886M,high syntax, I can get the board to reserve a larger 
memory range for the crashkernel (i.e. 886M):

# dmesg | grep -i crash
[    0.000000] kexec_core: Reserving 256MB of low memory at 3560MB for 
crashkernel (System low RAM: 2029MB)
[    0.000000] crashkernel reserved: 0x0000000bc5a00000 - 
0x0000000bfd000000 (886 MB)

kexec/kdump can also work also work fine on the board.

So, with the changes suggested in this cover letter and individual 
patches, please feel free to add:

Reviewed-and-Tested-by: Bhupesh Sharma <bhsharma@redhat.com>

Thanks,
Bhupesh

> Besides, we need to modify kexec-tools:
>    arm64: support more than one crash kernel regions(see [1])
> 
> I post this patch series about one month ago. The previous changes and
> discussions can be retrived from:
> 
> Changes since [v4]
> - reimplement memblock_cap_memory_ranges for multiple ranges by Mike.
> 
> Changes since [v3]
> - Add memblock_cap_memory_ranges back for multiple ranges.
> - Fix some compiling warnings.
> 
> Changes since [v2]
> - Split patch "arm64: kdump: support reserving crashkernel above 4G" as
>    two. Put "move reserve_crashkernel_low() into kexec_core.c" in a separate
>    patch.
> 
> Changes since [v1]:
> - Move common reserve_crashkernel_low() code into kernel/kexec_core.c.
> - Remove memblock_cap_memory_ranges() i added in v1 and implement that
>    in fdt_enforce_memory_region().
>    There are at most two crash kernel regions, for two crash kernel regions
>    case, we cap the memory range [min(regs[*].start), max(regs[*].end)]
>    and then remove the memory range in the middle.
> 
> [1]: http://lists.infradead.org/pipermail/kexec/2019-April/022792.html
> [v1]: https://lkml.org/lkml/2019/4/2/1174
> [v2]: https://lkml.org/lkml/2019/4/9/86
> [v3]: https://lkml.org/lkml/2019/4/9/306
> [v4]: https://lkml.org/lkml/2019/4/15/273
> 
> Chen Zhou (3):
>    x86: kdump: move reserve_crashkernel_low() into kexec_core.c
>    arm64: kdump: support reserving crashkernel above 4G
>    kdump: update Documentation about crashkernel on arm64
> 
> Mike Rapoport (1):
>    memblock: extend memblock_cap_memory_range to multiple ranges
> 
>   Documentation/admin-guide/kernel-parameters.txt |  6 +--
>   arch/arm64/include/asm/kexec.h                  |  3 ++
>   arch/arm64/kernel/setup.c                       |  3 ++
>   arch/arm64/mm/init.c                            | 72 +++++++++++++++++++------
>   arch/x86/include/asm/kexec.h                    |  3 ++
>   arch/x86/kernel/setup.c                         | 66 +++--------------------
>   include/linux/kexec.h                           |  5 ++
>   include/linux/memblock.h                        |  2 +-
>   kernel/kexec_core.c                             | 56 +++++++++++++++++++
>   mm/memblock.c                                   | 44 +++++++--------
>   10 files changed, 157 insertions(+), 103 deletions(-)
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
