Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 422D419820E
	for <lists+kexec@lfdr.de>; Mon, 30 Mar 2020 19:17:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Gft0cmwVCWcJUW5IPHpeQzhVVk94KqZGKR2ZtwJhYE=; b=taLi6eKK8d4ZRU
	SBC2o6oAVg92HhbxuCZ0rg+ElTA8uYGwzXMmIDOO+IGxnVYgGgRjnx5blQdsCOdjwP7HZsebmO4I6
	CzMGK4p1nqYzbawsDLzYcsBbI7rZKgbhkPDcdw1Ylir/AQdDi3WbQl1eDcJnXAbJMHNCXwZzqVlNS
	+/2jBCUnK+uQD5sqnU61duR6zpglfS7D4VES612ZYUBxkFLxhW5n9/c50vOPi17GaHIBX5oYqGmCG
	aslwDK7YpQEkl4edbmly0sIt8t3WTIFdIVPH7Us6ZwCJnaKpuJRykxdMIrw2PmKoJjsEVnMRi4MFm
	n4UMhC7IWEMmyGA+VGXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIy2Y-0003WN-EJ; Mon, 30 Mar 2020 17:17:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIy2V-0003Vd-GG; Mon, 30 Mar 2020 17:17:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2AEE8101E;
 Mon, 30 Mar 2020 10:17:29 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 81EE43F68F;
 Mon, 30 Mar 2020 10:17:27 -0700 (PDT)
Subject: Re: [PATCH 0/3] kexec/memory_hotplug: Prevent removal and accidental
 use
To: Baoquan He <bhe@redhat.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200330135522.GE6352@MiWiFi-R3L-srv>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <2bdfbb1c-49da-d476-4a38-f91937105ae3@arm.com>
Date: Mon, 30 Mar 2020 18:17:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200330135522.GE6352@MiWiFi-R3L-srv>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_101731_587086_04D43534 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Baoquan,

On 3/30/20 2:55 PM, Baoquan He wrote:
> On 03/26/20 at 06:07pm, James Morse wrote:
>> arm64 recently queued support for memory hotremove, which led to some
>> new corner cases for kexec.
>>
>> If the kexec segments are loaded for a removable region, that region may
>> be removed before kexec actually occurs. This causes the first kernel to
>> lockup when applying the relocations. (I've triggered this on x86 too).
>>
>> The first patch adds a memory notifier for kexec so that it can refuse
>> to allow in-use regions to be taken offline.
> 
> I talked about this with Dave Young. Currently, we tend to use
> kexec_file_load more in the future since most of its implementation is
> in kernel, we can get information about kernel more easilier. For the
> kexec kernel loaded into hotpluggable area, we can fix it in
> kexec_file_load side, we know the MOVABLE zone's start and end. As for
> the old kexec_load, we would like to keep it for back compatibility. At
> least in our distros, we have switched to kexec_file_load, will
> gradually obsolete kexec_load.

> So for this one, I suggest avoiding those
> MOVZBLE memory region when searching place for kexec kernel.

How does today's user-space know?


> Not sure if arm64 will still have difficulty.

arm64 added support for kexec_load first, then kexec_file_load. (evidently a
mistake).
kexec_file_load support was only added in the last year or so, I'd hazard most
people using this, are using the regular load kind. (and probably don't know or
care).



Thanks,

James

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
