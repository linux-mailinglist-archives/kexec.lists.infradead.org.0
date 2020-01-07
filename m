Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4492F132EC0
	for <lists+kexec@lfdr.de>; Tue,  7 Jan 2020 19:56:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YbhpIjMS8oFNgS+MOftSob1Hd6diqtaKSeNnvavajrg=; b=CeUKpYB10vWS5iEtVrYeGT437
	S96gdrqlkAJdIvJeMWlDjzdL5mMUPISI45IV8X0urxENaHgfzDdvJ/n2X+plrVKCGexo2wFwYgnjl
	cAK9IO0CiAhFvDomO2gMWhtBdlWra3oh2owsQ4oCCf7hY3S+amyxUv4IBBPUBcKLLvTusl6MYmRJd
	cukO4aX1z67JlEPZE+oW5iLTXCDjcbD8VdYTjLNJE2xuXjtWKflyHeYDA8klou2Zvs/xpUvmqNBwL
	UjTmD/mNhiC8JphAeKj0cA/v+udfdIRHTTkqSrBXFjIcirw/4pgXYWXrm8OeMmBNIbQJJXqAGr3nn
	UazgzIkQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iou1b-0003aW-IC; Tue, 07 Jan 2020 18:56:19 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioofM-0004rf-3L
 for kexec@lists.infradead.org; Tue, 07 Jan 2020 13:13:01 +0000
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 007DCKIw009023; Tue, 7 Jan 2020 08:12:57 -0500
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2xb8s8rx28-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2020 08:12:57 -0500
Received: from m0098419.ppops.net (m0098419.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 007DCWMO010296;
 Tue, 7 Jan 2020 08:12:57 -0500
Received: from ppma02wdc.us.ibm.com (aa.5b.37a9.ip4.static.sl-reverse.com
 [169.55.91.170])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2xb8s8rx1u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2020 08:12:57 -0500
Received: from pps.filterd (ppma02wdc.us.ibm.com [127.0.0.1])
 by ppma02wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 007DAr4k005757;
 Tue, 7 Jan 2020 13:12:56 GMT
Received: from b03cxnp08025.gho.boulder.ibm.com
 (b03cxnp08025.gho.boulder.ibm.com [9.17.130.17])
 by ppma02wdc.us.ibm.com with ESMTP id 2xajb6u7j7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2020 13:12:56 +0000
Received: from b03ledav001.gho.boulder.ibm.com
 (b03ledav001.gho.boulder.ibm.com [9.17.130.232])
 by b03cxnp08025.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 007DCtS946006690
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 7 Jan 2020 13:12:55 GMT
Received: from b03ledav001.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B7E396E04E;
 Tue,  7 Jan 2020 13:12:55 +0000 (GMT)
Received: from b03ledav001.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0A6C66E04C;
 Tue,  7 Jan 2020 13:12:54 +0000 (GMT)
Received: from [9.152.98.193] (unknown [9.152.98.193])
 by b03ledav001.gho.boulder.ibm.com (Postfix) with ESMTPS;
 Tue,  7 Jan 2020 13:12:54 +0000 (GMT)
Subject: Re: [PATCH] makedumpfile/s390: Add get_kaslr_offset() for s390x
To: =?UTF-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+IOS4gOS7gSk=?= <k-hagio-ab@nec.com>
References: <20191203222725.64734-1-zaslonko@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597AB9@BPXM09GP.gisp.nec.co.jp>
 <323f61d4-6aab-a0b4-faa3-e41756fb9913@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597F4E@BPXM09GP.gisp.nec.co.jp>
 <8fd807f1-c296-1a34-e42a-a102df62f3a0@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03598540@BPXM09GP.gisp.nec.co.jp>
 <726b8852-77af-b440-99b2-6b5a7b05e674@redhat.com>
 <2aa868b8-83f4-cb23-9acf-178a9ab8144a@redhat.com>
 <TY2PR01MB5210EBE26FC1603B3E7FF491DD2A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <ecaa7f62-d58f-080d-27de-176b3d592a11@redhat.com>
 <TY2PR01MB5210EC16730BC6D382D5E543DD230@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <3e5e68a2-edfe-6545-db97-277d5be36f8a@linux.ibm.com>
 <TY2PR01MB521032C755BF1FCCDA0239B9DD3C0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
From: Zaslonko Mikhail <zaslonko@linux.ibm.com>
Message-ID: <cdabc393-e507-9357-b2f1-9797b0bbc153@linux.ibm.com>
Date: Tue, 7 Jan 2020 14:12:53 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <TY2PR01MB521032C755BF1FCCDA0239B9DD3C0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
Content-Type: multipart/mixed; boundary="------------BF715B1FC66D833F0F8582CF"
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2020-01-07_03:2020-01-06,2020-01-07 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 impostorscore=0 mlxlogscore=999 spamscore=0 mlxscore=0 priorityscore=1501
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-2001070110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_051300_274242_0B6E1EA3 
X-CRM114-Status: GOOD (  21.59  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Mailman-Approved-At: Tue, 07 Jan 2020 10:56:17 -0800
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
Cc: Philipp Rudo <prudo@linux.ibm.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 lijiang <lijiang@redhat.com>
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.
--------------BF715B1FC66D833F0F8582CF
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello Kazu,

I've refreshed my patch on top of 'origin/add-get_kaslr_offset_general'. Please find it attached below.
Hope there is still a chance to include it into the release.

Thanks,
Mikhail Zaslonko


On 06.01.2020 22:42, HAGIO KAZUHITO(萩尾 一仁) wrote:
> 
>> -----Original Message-----
>> Hi Kazu,
>>
>> Sorry, I did't have a chance to try your patch yet.
>> I will update mine next week.
> 
> OK.
> FYI, I'm planning to relase the next version of makedumpfile by the end
> of next week.  It needs some regression testing with old vmcores, etc., so
> I can include patches merged by the beginning of next week in the release.
> 
> Thanks,
> Kazu
> 
>>
>> Thanks,
>> Mikhail
>>
>>
>> On 03.01.2020 21:55, HAGIO KAZUHITO(萩尾 一仁) wrote:
>>> Hi Lianbo, Mikhail,
>>>
>>>> -----Original Message-----
>>>>>>
>>>>>> In addition, the above code confused me, it will always return 0 on s390(please refer to my logs).
>>>>>
>>>>> The aim of get_kaslr_offset() here is only setting info->kaslr_offset to the value
>>>>> from vmcoreinfo for the SYMBOL_INIT() macro.
>>>>> (get_kaslr_offset() returns the kaslr offset in the resolve_config_entry().)
>>>>>
>>>> Thanks for your explanation, Kazu.
>>>>
>>>>> But yeah, the get_kaslr_offset(SYMBOL(_stext)) is confusing and not good.
>>>>> Passing 0 might be a bit better..?
>>>>>
>>>> Yes, looks good to me.
>>>
>>> OK, I pushed an additional patch fixing it to the test branch:
>>> https://github.com/k-hagio/makedumpfile/tree/add-get_kaslr_offset_general
>>> Thanks Lianbo for pointing it out.
>>>
>>> Mikhail, if you update your patch on top of the tree above,
>>> I'll merge it upstream.
>>>
>>> Thanks,
>>> Kazu
>>>
>>> P.S. My email address has been changed to k-hagio-ab@nec.com.
>>> Please send email to this address in the future. Thanks.
>>> (Ugh, it seems I cannot remove my kanji name in the From: field..)
>>>
> 

--------------BF715B1FC66D833F0F8582CF
Content-Type: text/plain; charset=UTF-8;
 name="0001-makedumpfile-s390-Use-get_kaslr_offset_general-for-s.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename*0="0001-makedumpfile-s390-Use-get_kaslr_offset_general-for-s.pa";
 filename*1="tch"

RnJvbSA1ZDMwZGRmYzJmOTdiNDhlOTIzNjg4YzBhMjk1MTA2YzY4ZmQ1NmRmIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBNaWtoYWlsIFphc2xvbmtvIDx6YXNsb25rb0BsaW51
eC5pYm0uY29tPgpEYXRlOiBUdWUsIDcgSmFuIDIwMjAgMTM6Mzg6MTQgKzAxMDAKU3ViamVj
dDogW1BBVENIXSBtYWtlZHVtcGZpbGUvczM5MDogVXNlIGdldF9rYXNscl9vZmZzZXRfZ2Vu
ZXJhbCgpIGZvciBzMzkweAoKU2luY2Uga2VybmVsIHY1LjIgS0FTTFIgaXMgc3VwcG9ydGVk
IG9uIHMzOTAuIFVzZSByZWNlbnRseSBpbnRyb2R1Y2VkCmdldF9rYXNscl9vZmZzZXRfZ2Vu
ZXJhbCgpIGZvciBzMzkweCBpbiBvcmRlciB0byBkZXJpdmUga2FzbHIgb2Zmc2V0CmZyb20g
dm1jb3JlaW5mbyB3aGVuIC14IG1ha2VkdW1wZmlsZSBvcHRpb24gc3BlY2lmaWVkLgoKU2ln
bmVkLW9mZi1ieTogTWlraGFpbCBaYXNsb25rbyA8emFzbG9ua29AbGludXguaWJtLmNvbT4K
LS0tCiBtYWtlZHVtcGZpbGUuaCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL21ha2VkdW1wZmlsZS5oIGIvbWFr
ZWR1bXBmaWxlLmgKaW5kZXggMDY3ZmE0OC4uZTZjODE1ZCAxMDA2NDQKLS0tIGEvbWFrZWR1
bXBmaWxlLmgKKysrIGIvbWFrZWR1bXBmaWxlLmgKQEAgLTEwNzUsNyArMTA3NSw3IEBAIGlu
dCBpc19pb21lbV9waHlzX2FkZHJfczM5MHgodW5zaWduZWQgbG9uZyBhZGRyKTsKICNkZWZp
bmUgZ2V0X3BoeXNfYmFzZSgpCQlzdHViX3RydWUoKQogI2RlZmluZSBnZXRfbWFjaGRlcF9p
bmZvKCkJZ2V0X21hY2hkZXBfaW5mb19zMzkweCgpCiAjZGVmaW5lIGdldF92ZXJzaW9uZGVw
X2luZm8oKQlzdHViX3RydWUoKQotI2RlZmluZSBnZXRfa2FzbHJfb2Zmc2V0KFgpCXN0dWJf
ZmFsc2UoKQorI2RlZmluZSBnZXRfa2FzbHJfb2Zmc2V0KFgpCWdldF9rYXNscl9vZmZzZXRf
Z2VuZXJhbChYKQogI2RlZmluZSB2YWRkcl90b19wYWRkcihYKQl2YWRkcl90b19wYWRkcl9z
MzkweChYKQogI2RlZmluZSBwYWRkcl90b192YWRkcihYKQlwYWRkcl90b192YWRkcl9nZW5l
cmFsKFgpCiAjZGVmaW5lIGlzX3BoeXNfYWRkcihYKQkJaXNfaW9tZW1fcGh5c19hZGRyX3Mz
OTB4KFgpCi0tIAoyLjE3LjEKCg==
--------------BF715B1FC66D833F0F8582CF
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

--------------BF715B1FC66D833F0F8582CF--


