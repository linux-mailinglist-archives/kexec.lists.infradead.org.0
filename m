Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E549A642E8
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 09:32:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mVQrPTsAT8DYULaC3ANsQfk8LvMxle/uHbXE+xGyeio=; b=VdDGTOCq79F4yd3ywwBar8xZq
	TI6rUXDHG0RHlwpl3f1JH5rcL3UoJ/XB6AEf2ZjbWV2j4HkkgHeJOW2Gr9pZrkYUHk379bJ/+Dkrh
	Znl/v23LmriC6VT5iB1RUPPs1mSB/5bF/JrMCXxB9KUltKcr4E6IrzZWNlXF8Gi+aMnHzcYk1DWHv
	XGp2o35BwYOvd/JwHhYZe6mgwr43T6HbYWn6acpBNyUvENRzwPJ6oa7PsXc1xGl3XB3vcZ8lRrT3F
	EHVoILaF8Qgl0NSJ8i/FAauXZm1lW3xjVpesQZRPfMlubxypIdXugR+3fouutsN44lu0Z0ZoEvjeO
	6FHBkpCTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl75g-00075R-MY; Wed, 10 Jul 2019 07:32:36 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl75c-00074S-MC
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 07:32:34 +0000
Received: by mail-pg1-f194.google.com with SMTP id q4so792404pgj.8
 for <kexec@lists.infradead.org>; Wed, 10 Jul 2019 00:32:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/8k3wJZ/M5gqwesQlBPnEgxOOT25nplWBQ3376EquKg=;
 b=NUR9HzHlZcs4mpooaIQ5jbg8VXtHw62646OQ0hqYkMA8U8168tTxNlBGrksuOBqppP
 uUowIRBL0grN7NdzGwe/NIx9FxK5PX0TsqSVqFbUKmbFGFpUgP3rNV1vrjfwYlzt4kj3
 CHzVUEmIfKqUSyqFJYEjNkEM15CJtUDpPm792ayMGnBhJN7KBO0wqb+TEJWsfgSXJzXs
 /lGSgG02SAR1VxAWbdVJRSeelurL0gx7R/m84UH5gdp3COz1a014wd+mt+8vlzKCJpT2
 /uECDTh6C6KsvZPv/Ko1T0VEM52GM5MBgvRr5L1WKqer9oNXpORoFSiSUYPp50kyXovv
 1VXQ==
X-Gm-Message-State: APjAAAXW7kMAh9qmPvILDLrQpwjKzCAQ4SeLrIIxbRZJKykenvXO4qh1
 JwJo66R1OoA/WzXE7oJyUcIrkA==
X-Google-Smtp-Source: APXvYqwK3Jf9w48Lla8NZTVWD/DBh1DqC5ss795aeyr2gQwR+7Jw/tTYhkCw/arOVf47ygPuQrHoRA==
X-Received: by 2002:a65:57ca:: with SMTP id q10mr36703662pgr.52.1562743951664; 
 Wed, 10 Jul 2019 00:32:31 -0700 (PDT)
Received: from localhost.localdomain ([182.69.207.54])
 by smtp.gmail.com with ESMTPSA id g1sm2915730pgg.27.2019.07.10.00.32.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 00:32:30 -0700 (PDT)
Subject: Re: [v2 0/5] arm64: allow to reserve memory for normal kexec kernel
To: Pavel Tatashin <pasha.tatashin@soleen.com>, jmorris@namei.org,
 sashal@kernel.org, ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20190709182014.16052-1-pasha.tatashin@soleen.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <d57ec270-a9dc-1820-195c-eb7ef61f9828@redhat.com>
Date: Wed, 10 Jul 2019 13:02:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190709182014.16052-1-pasha.tatashin@soleen.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_003232_725052_3D882134 
X-CRM114-Status: GOOD (  33.61  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Pavel,

On 07/09/2019 11:50 PM, Pavel Tatashin wrote:
> Changelog
> v1 - v2
> 	- No changes to patches, addressed suggestion from James Morse
> 	  to add "arm64" tag to cover letter.

Minor nit. Please also add PATCH to the subject line. Something like 
[PATCH v2]

Also will suggest to wait for atleast a couple of days before sending a 
new version of the patchset so as to give sufficient time for reviews to 
happen.

> 	- Improved cover letter information based on discussion.

> Currently, it is only allowed to reserve memory for crash kernel, because
> it is a requirement in order to be able to boot into crash kernel without
> touching memory of crashed kernel is to have memory reserved.

> The second benefit for having memory reserved for kexec kernel is
> that it does not require a relocation after segments are loaded into
> memory.

> If kexec functionality is used for a fast system update, with a minimal
> downtime, the relocation of kernel + initramfs might take a significant
> portion of reboot.
> 
> In fact, on the machine that we are using, that has ARM64 processor
> it takes 0.35s to relocate during kexec, thus taking 52% of kernel reboot
> time:
> 
> kernel shutdown	0.03s
> relocation	0.35s
> kernel startup	0.29s
> 
> Image: 13M and initramfs is 24M. If initramfs increases, the relocation
> time increases proportionally.
> 
> While, it is possible to add 'kexeckernel=' parameters support to other
> architectures by modifying reserve_crashkernel(), in this series this is
> done for arm64 only.

Note that we normally have two dimensions to this (and similar) 
problem(s) - time we spend in relocating the kernel + initramfs v/s the 
memory space we reserve while enabling kexeckernel (in this case) in the 
primary kernel.

Just to give you an example, I have to shrink even the crashkernel 
reservation size in the primary kernel on arm64 systems running fedora 
which have very small memory footprint. I have a amazon ec2 (aarch64) 
for example which runs with 256M memory space and even enabling 
crashkernel on the same was quite a challenge :)

In such a case we need to do a comparison between the space we reserve 
v/s the time we spend while relocating while doing a kexec load.

Note that we recently had issues with OOM in crashkernel boot, because 
of which we had to introduce kernel command-line parameter to allow a 
user to disable device dump to reduce memory usage, see the following 
commit:

a3a3031b384f ("vmcore: Add a kernel parameter novmcoredd")

More on the same below ...

> The reason it is so slow on arm64 to relocate kernel is because the code
> that does relocation does this with MMU disabled, and thus D-Cache and
> I-Cache must also be disabled.
> 
> Alternative solution is more complicated: Setup a temporary page table
> for relocation_routine and also for code from cpu_soft_restart. Perform
> relocation with MMU enabled, do cpu_soft_restart where MMU and caching
> are disabled, jump to purgatory. A similar approach was suggested for
> purgatory and was rejected due to making purgatory too complicated.
> On, the other hand hibernate does something similar already, but there
> MMU never needs to be disabled, and also by the time machine_kexec()
> is called, allocator is not available, as we can't fail to do reboot,
> so page table must be pre-allocated during kernel load time.

... may be its time to explore this path now with a fresh mind. I know 
Pratyush tried a bit on this and now I am experimenting on the same on 
several aarch64 systems, mainly because we are really short on memory 
resources on several aarch64 systems (used in embedded/cloud domain) and 
frequently run into OOM issues even in the primary kernel.

Some more comments below:

1. I recommend protecting this code under a CONFIG (CONFIG_FAST_KEXEC ?) 
option and make it dependent on ARM64 being enabled (via CONFIG_ARM64 
option) to avoid causing issues on other archs like s390, powerpc, 
x86_64 (which probably don't need these changes).

Also better to make the CONFIG option disabled by default, so that we 
can avoid OOM issues in primary kernel on arm64 systems with smaller 
memory footprints. A user can enabled it, if he needs fast kexec load 
experience..

2. Also, I don't see timing results for kexec_file_load() in this cover 
letter. Can you add some results for the same here, or are they on 
similar lines?

I will give this a go on some aarch64 systems at my end and come back 
with more on the kernel + initramfs relocation time v/s memory space 
taken up results.

Thanks,
Bhupesh

> Note: the above time is relocation time only. Purgatory usually also
> computes checksum, but that is skipped, because --no-check is used when
> kernel image is loaded via kexec.
> 
> Pavel Tatashin (5):
>    kexec: quiet down kexec reboot
>    kexec: add resource for normal kexec region
>    kexec: export common crashkernel/kexeckernel parser
>    kexec: use reserved memory for normal kexec reboot
>    arm64, kexec: reserve kexeckernel region
> 
>   .../admin-guide/kernel-parameters.txt         |  7 ++
>   arch/arm64/kernel/setup.c                     |  5 ++
>   arch/arm64/mm/init.c                          | 83 ++++++++++++-------
>   include/linux/crash_core.h                    |  6 ++
>   include/linux/ioport.h                        |  1 +
>   include/linux/kexec.h                         |  6 +-
>   kernel/crash_core.c                           | 27 +++---
>   kernel/kexec_core.c                           | 50 +++++++----
>   8 files changed, 127 insertions(+), 58 deletions(-)
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
