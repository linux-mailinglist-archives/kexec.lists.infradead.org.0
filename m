Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D9C1A7164
	for <lists+kexec@lfdr.de>; Tue, 14 Apr 2020 05:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y117Q2FleOL34LnawaurkuA/TdlIrEMZyml/h2wkot4=; b=tt/qV3vAAn7JPg
	6huT5MjrekX2GKNTo7nr9E7yruRWQEAz2MhQsygELpnG60KXNyUPyHqM4FUT8QBWxTwa8qirlwkQv
	1M7fIocJ9pmubj8K7IoBAO4Vn1E1UZeQJ3+Ch/jXcZpcV6T404GwVl9RUj1xh4g6V/tma6yJaEvFg
	XKAk5eHfTmb3Q0QZfwgfxCVNKZEkP1FsSCvC7VOrCwj759dxAM9iHaJHVAj53s2QK0Wb580TVw/OD
	KLvpVgEeP/w0bN1zYyyVzNTX459KYDS+t/hv7+iINHilrGbNCgS/DxXoPfFfqw7HdVCTSDCdUb/wC
	rQl3zTAwvgz/BmhYQ1VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOBpe-0004Bn-T7; Tue, 14 Apr 2020 03:01:50 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOBpb-0004BS-Gr
 for kexec@lists.infradead.org; Tue, 14 Apr 2020 03:01:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586833305;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bDKU3chWdvhZpwOy1Iy3XGhjGJQC6PY+qiHkka2AEiU=;
 b=DbYv+hpVoO6FV1i+NDE2ymdMvsoQRMZxg9RCZ+0eFSyuT8ctOiU2RrALIi2buGNzhR3pAX
 DdkMlzrf2ZGdZ48XtyMpIOdsnfuCtfS1h4bThE9Rb5HXSUGZVH/JZNmDuKXuKyiLnjRExC
 1iSNZEIhP48uC/L32Uz/3UZMhZHrWOQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-307-ZA8SA2CJPo-Wbc2FRyNAdw-1; Mon, 13 Apr 2020 23:01:38 -0400
X-MC-Unique: ZA8SA2CJPo-Wbc2FRyNAdw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 95A7E8010F1;
 Tue, 14 Apr 2020 03:01:37 +0000 (UTC)
Received: from [10.72.8.16] (ovpn-8-16.pek2.redhat.com [10.72.8.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 30EFA9A24F;
 Tue, 14 Apr 2020 03:01:35 +0000 (UTC)
Subject: Re: [PATCH] makedumpfile: clear mem_map if not in pt_loads
To: =?UTF-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
References: <1586749598-1671-1-git-send-email-piliu@redhat.com>
 <OSBPR01MB1991F32564DE2C60C233EC76DDDD0@OSBPR01MB1991.jpnprd01.prod.outlook.com>
From: piliu <piliu@redhat.com>
Message-ID: <8a43526d-aea8-d4de-743e-703e01609396@redhat.com>
Date: Tue, 14 Apr 2020 11:01:30 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <OSBPR01MB1991F32564DE2C60C233EC76DDDD0@OSBPR01MB1991.jpnprd01.prod.outlook.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_200147_637803_C49A9768 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



On 04/14/2020 03:09 AM, HAGIO KAZUHITO(萩尾　一仁) wrote:
> Hi Pingfan,
> 
>> -----Original Message-----
>> The crashed kernel passes usable RAM info through pt_loads[], but the
>> current code ignore this, and parse all sections below info->max_mapnr.
>> Refer to code in get_mm_sparsemem()
>>   num_section = divideup(info->max_mapnr, PAGES_PER_SECTION());
>>
>> These ranges can include unwanted memory e.g. reserved-memory for crash
>> kernel, PMEM for fs-dax. Excluding them by setting mem_maps[section_nr]=NULL.
> 
> hmm, I think that bitmap1 corresponds to pt_loads ranges, so even without
> the patch, only the ranges in pt_loads can be included in a dumpfile.
> Am I missing anything?
> 
Check the code, and I think you are right.

Thanks,
Pingfan
> Thanks,
> Kazu
> 
>>
>> Signed-off-by: Pingfan Liu <piliu@redhat.com>
>> ---
>>  elf_info.c     | 12 ++++++++++++
>>  elf_info.h     |  1 +
>>  makedumpfile.c |  5 +++++
>>  3 files changed, 18 insertions(+)
>>
>> diff --git a/elf_info.c b/elf_info.c
>> index 7d72742..297c3e4 100644
>> --- a/elf_info.c
>> +++ b/elf_info.c
>> @@ -1302,3 +1302,15 @@ get_max_file_offset(void)
>>  {
>>  	return max_file_offset;
>>  }
>> +
>> +int phyaddr_in_pt_loads(unsigned long long phys_start)
>> +{
>> +	 struct pt_load_segment *pls;
>> +
>> +	for (int i = 0; i < num_pt_loads; i++) {
>> +		pls = &pt_loads[i];
>> +		if (phys_start >= pls->phys_start && phys_start < pls->phys_end)
>> +			return TRUE;
>> +	}
>> +	return FALSE;
>> +}
>> diff --git a/elf_info.h b/elf_info.h
>> index 934b608..f5bb07c 100644
>> --- a/elf_info.h
>> +++ b/elf_info.h
>> @@ -90,6 +90,7 @@ void get_eraseinfo(off_t *offset, unsigned long *size);
>>  void set_eraseinfo(off_t offset, unsigned long size);
>>
>>  off_t get_max_file_offset(void);
>> +int phyaddr_in_pt_loads(unsigned long long phys_start);
>>
>>  #endif  /* ELF_INFO_H */
>>
>> diff --git a/makedumpfile.c b/makedumpfile.c
>> index f5860a1..c0fa075 100644
>> --- a/makedumpfile.c
>> +++ b/makedumpfile.c
>> @@ -3556,8 +3556,13 @@ get_mm_sparsemem(void)
>>  		goto out;
>>  	}
>>  	for (section_nr = 0; section_nr < num_section; section_nr++) {
>> +		unsigned long phys_start;
>> +
>>  		pfn_start = section_nr * PAGES_PER_SECTION();
>>  		pfn_end   = pfn_start + PAGES_PER_SECTION();
>> +		phys_start = pfn_start << PAGESHIFT();
>> +		if (!phyaddr_in_pt_loads(phys_start))
>> +			mem_maps[section_nr] = (unsigned long)NULL;
>>  		if (info->max_mapnr < pfn_end)
>>  			pfn_end = info->max_mapnr;
>>  		dump_mem_map(pfn_start, pfn_end, mem_maps[section_nr], section_nr);
>> --
>> 2.7.5
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
