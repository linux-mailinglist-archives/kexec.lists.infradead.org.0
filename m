Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C3F1E8C3
	for <lists+kexec@lfdr.de>; Wed, 15 May 2019 09:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3hw62oHtxvMPBoCqwTIYU21zyHk9EnDWySiwkbxpDQ=; b=gttqSgEDD4AHpP
	V0OwbVU0ofPWvRg25QhQb425n2rZUZnJYygloAZYgX6j4SK68u0iUq7eB3RRq5LX96+2tWBrmc8WH
	Xl6uv/VUV7TAjLyL7GrAbx0tTdCKJ4bNZnVMqKGEqvGhL5Wj9xAjcZX0hEFUCs5vKtGpmkR7dwTuK
	YhCR6Ogkj2LXyxigAAU2irpMtz2/vE68SWwZmyKyO6yFkDW6MNSmWJ1fRGt8mVetVzyr49EYVqp3a
	Htht3tsYv22jLiZKanvQ0MwkNhiHj0/01ZigYxmpgtk871zOl0VOu1dbmEpaYfVAK5nckCScSyAOd
	AhRUx6JIr7bJAWN6weVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQo3l-0008EY-BA; Wed, 15 May 2019 07:10:41 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQo3i-0008EE-07
 for kexec@lists.infradead.org; Wed, 15 May 2019 07:10:39 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id x4F7AJQU030613
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 16:10:20 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id x4F7AJkx017304;
 Wed, 15 May 2019 16:10:19 +0900
Received: from mail01b.kamome.nec.co.jp (mail01b.kamome.nec.co.jp [10.25.43.2])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id x4F7AJj5007322;
 Wed, 15 May 2019 16:10:19 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.135] [10.38.151.135]) by
 mail03.kamome.nec.co.jp with ESMTP id BT-MMP-405354;
 Wed, 15 May 2019 16:09:44 +0900
Received: from BPXM12GP.gisp.nec.co.jp ([10.38.151.204]) by
 BPXC07GP.gisp.nec.co.jp ([10.38.151.135]) with mapi id 14.03.0319.002; Wed,
 15 May 2019 16:09:44 +0900
From: Junichi Nomura <j-nomura@ce.jp.nec.com>
To: Borislav Petkov <bp@alien8.de>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
Thread-Topic: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI
 systab and ACPI tables
Thread-Index: AQHVCt13YD4lckvUHUCIqj5Wl9aEBaZrKqmAgAADEQA=
Date: Wed, 15 May 2019 07:09:43 +0000
Message-ID: <20190515070942.GA17154@jeru.linux.bs1.fc.nec.co.jp>
References: <20190424092944.30481-2-bhe@redhat.com>
 <20190429002318.GA25400@MiWiFi-R3L-srv> <20190429135536.GC2324@zn.tnic>
 <20190513014248.GA16774@MiWiFi-R3L-srv> <20190513070725.GA20105@zn.tnic>
 <20190513073254.GB16774@MiWiFi-R3L-srv> <20190513075006.GB20105@zn.tnic>
 <20190513080210.GC16774@MiWiFi-R3L-srv>
 <20190515051717.GA13703@jeru.linux.bs1.fc.nec.co.jp>
 <20190515065843.GA24212@zn.tnic>
In-Reply-To: <20190515065843.GA24212@zn.tnic>
Accept-Language: en-US, ja-JP
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.34.125.85]
Content-ID: <A094AF2DEB5936499C61698B73C9C0AC@gisp.nec.co.jp>
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_001038_287722_E79E0D21 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.161 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "fanc.fnst@cn.fujitsu.com" <fanc.fnst@cn.fujitsu.com>,
 "kasong@redhat.com" <kasong@redhat.com>, Baoquan He <bhe@redhat.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hpa@zytor.com" <hpa@zytor.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "dyoung@redhat.com" <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 5/15/19 3:58 PM, Borislav Petkov wrote:
> On Wed, May 15, 2019 at 05:17:19AM +0000, Junichi Nomura wrote:
>> Hi Kairui,
>>
>> On 5/13/19 5:02 PM, Baoquan He wrote:
>>> On 05/13/19 at 09:50am, Borislav Petkov wrote:
>>>> On Mon, May 13, 2019 at 03:32:54PM +0800, Baoquan He wrote:
>>>> So we're going to try it again this cycle and if there's no fallout, it
>>>> will go upstream. If not, it will have to be fixed. The usual thing.
>>>>
>>>> And I don't care if Kairui's patch fixes this one problem - judging by
>>>> the fragility of this whole thing, it should be hammered on one more
>>>> cycle on as many boxes as possible to make sure there's no other SNAFUs.
>>>>
>>>> So go test it on more machines instead. I've pushed it here:
>>>>
>>>> https://git.kernel.org/pub/scm/linux/kernel/git/bp/bp.git/log/?h=next-merge-window
>>>
>>> Pingfan has got a machine to reproduce the kexec breakage issue, and
>>> applying these two patches fix it. He planned to paste the test result.
>>> I will ask him to try this branch if he has time, or I can get his
>>> machine to test.
>>>
>>> Junichi, also have a try on Boris's branch in NEC's test environment?
>>
>> while the patch set works on most of the machines I'm testing around,
>> I found kexec(1) fails to load kernel on a few machines if this patch
>> is applied.  Those machines don't have IORES_DESC_ACPI_TABLES region
>> and have ACPI tables in IORES_DESC_ACPI_NV_STORAGE region instead.
> 
> Why? What kind of machines are those?

I don't know.  They are just general purpose Xeon-based servers
and not some special purpose machines.  So I guess there are other
such machines in the wild.

> Why are the ACPI tables in NV storage?
> 
> Looking at crash_setup_memmap_entries(), it already maps that type so I
> guess this is needed.
> 
> + Rafael and leaving in the rest for reference.
> 
>  
>> So I think map_acpi_tables() should try to map both regions.  I tried
>> following change in addition and it worked.
>>
>> -- 
>> Jun'ichi Nomura, NEC Corporation / NEC Solution Innovators, Ltd.
>>
>>
>> diff --git a/arch/x86/kernel/machine_kexec_64.c b/arch/x86/kernel/machine_kexec_64.c
>> index 3c77bdf..3837c4a 100644
>> --- a/arch/x86/kernel/machine_kexec_64.c
>> +++ b/arch/x86/kernel/machine_kexec_64.c
>> @@ -56,12 +56,22 @@ static int mem_region_callback(struct resource *res, void *arg)
>>  {
>>  	unsigned long flags = IORESOURCE_MEM | IORESOURCE_BUSY;
>>  	struct init_pgtable_data data;
>> +	int ret;
>>  
>>  	data.info = info;
>>  	data.level4p = level4p;
>>  	flags = IORESOURCE_MEM | IORESOURCE_BUSY;
>> -	return walk_iomem_res_desc(IORES_DESC_ACPI_TABLES, flags, 0, -1,
>> -				   &data, mem_region_callback);
>> +	ret = walk_iomem_res_desc(IORES_DESC_ACPI_TABLES, flags, 0, -1,
>> +				  &data, mem_region_callback);
>> +	if (ret && ret != -EINVAL)
>> +		return ret;
>> +
>> +	ret = walk_iomem_res_desc(IORES_DESC_ACPI_NV_STORAGE, flags, 0, -1,
>> +				  &data, mem_region_callback);
>> +	if (ret && ret != -EINVAL)
>> +		return ret;
>> +
>> +	return 0;
>>  }
>>  #else
>>  static int map_acpi_tables(struct x86_mapping_info *info, pgd_t *level4p) { return 0; }

-- 
Jun'ichi Nomura, NEC Corporation / NEC Solution Innovators, Ltd.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
