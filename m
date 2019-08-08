Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7219686D59
	for <lists+kexec@lfdr.de>; Fri,  9 Aug 2019 00:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YRSij+cHa420mnfA+NFjdmPROovDRRUS9aCltk7ahn8=; b=JTlk4EhXDKE/E1
	F90K/4qlX+jFBlDmNOGLJUmOvVcTyXosbHH9BgF7kjkoPc9cNpfIyW55w/p64yNux8JqvsYM3Guqg
	VCrLOAQe5P9B/EqO3dZMDHGO4Ze2A3+x6hWbKNueYHKdGu12T8Izr/iDpyb/Sh0kWdlv8Rvzpye/d
	0MOo5ejvECGzZmZjOuK7Rpb2YQYmHW7WkoxaYDeFvOvFsFGQyVvjCUXU8eo+RhHu1ZB8Rw5stORT6
	RDtNTaEESjppMeHGlu/3Ml0EEV+W5xIX5KenNfjHDCw9T6RcliUzOXz5dzbs7jcKbD0C3eyTqjE8p
	RycRXfR4Ar8hZqwzFk9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvr2l-0002Q6-FG; Thu, 08 Aug 2019 22:37:59 +0000
Received: from mail-eopbgr770048.outbound.protection.outlook.com
 ([40.107.77.48] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvr2i-0002PZ-V4
 for kexec@lists.infradead.org; Thu, 08 Aug 2019 22:37:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bh/SHjf4q4ojeIdVMFcrohGmAVehyNjhQsf2dGqlLrI54c44IYQTQTNSUni6iRmRg/sC4nFOZk14owQoX2/AX0CDnHP8A4y9jwhUBCuDqOayjwlrNbGoEXvVUkJDMUJNwa52bytkEg9IB3ZGcWTUTEMdvf4kpyT3QZAt9twnVgaAZk1TDndPb49/QdXXW4d1D4coOo4pxKaLhJPLTAfCQ5GG7CeYV2nL4Ia1+3+kO6Q6wYyOGXudbUqB4rnyRt5khP+z8SmLFBN2Ps+CFm2ylex0mM9F6EYekT0uQlhpSXcb1ET9PO63tECXJSi4mz6Xb7lM++LCEvedaVnIn100sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lapq56wkDO8qurDEZtxcOVJqTYkZvfQ4AJtfpRLEIDY=;
 b=jpEAxzXN3u8yic3u63kXrZ6h3DL7N0EGh1IW+GrvPayNDyx9hChO907qxsOvmA1OZiVTeycGbEzRaTICKx2LXMQxtkG5yj/GkWk6EQZvCVmDo0l68gTz73V9tMervXN4QYhIa/7EYRDKX++waGd6+VDDKeQTY0KkAvFKonR5PRuonxpWkeJwGFFT34ndOnAqM2G62CrJHpJiQeJgmozvFXzlPciarFEpfswCUcKKM8n6g06BcRJqfNB3f85PLDjg4bIP9s3k+SYtIOE4GtWCGg90x/u63ohrjjQHK+Sf7yerEnSLOaWIDvuO9w7bvqk58SLQBtSZ9YjGxk8H1mdMuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lapq56wkDO8qurDEZtxcOVJqTYkZvfQ4AJtfpRLEIDY=;
 b=AmB/7KVI0WySjYeUavmWckB5gk5OKO5N8gfSImBucMQ4RGfXY/A0fVm50sKsAvGtn/D9kygj5xgX/yo+coZzGpMaWOMSQqUFPCRJAeYPeV8vrsX7jE6rYgSeQ+FAwvcl88dofeVO4artEAnr9kAa2xw0gopTvP7Gh6JMfr4sZ4o=
Received: from DM6PR12MB3163.namprd12.prod.outlook.com (20.179.104.150) by
 DM6PR12MB3836.namprd12.prod.outlook.com (10.255.173.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Thu, 8 Aug 2019 22:37:53 +0000
Received: from DM6PR12MB3163.namprd12.prod.outlook.com
 ([fe80::9c3d:8593:906c:e4f7]) by DM6PR12MB3163.namprd12.prod.outlook.com
 ([fe80::9c3d:8593:906c:e4f7%6]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 22:37:53 +0000
From: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>
To: Dave Young <dyoung@redhat.com>, lijiang <lijiang@redhat.com>
Subject: Re: crash: `kmem -s` reported "kmem: dma-kmalloc-512: slab:
 ffffe192c0001000 invalid freepointer: e5ffef4e9a040b7e" on a dumped vmcore
Thread-Topic: crash: `kmem -s` reported "kmem: dma-kmalloc-512: slab:
 ffffe192c0001000 invalid freepointer: e5ffef4e9a040b7e" on a dumped vmcore
Thread-Index: AQHVSHo224T5ol7hA0egv05Ed4x+JKbnC9YAgArW+YA=
Date: Thu, 8 Aug 2019 22:37:53 +0000
Message-ID: <5d91e856-01de-bc80-e4bc-497d57652072@amd.com>
References: <e640b50a-a962-8e56-33a2-2ba2eb76e813@redhat.com>
 <20190802010538.GA2202@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20190802010538.GA2202@dhcp-128-65.nay.redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN6PR16CA0039.namprd16.prod.outlook.com
 (2603:10b6:805:ca::16) To DM6PR12MB3163.namprd12.prod.outlook.com
 (2603:10b6:5:182::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Thomas.Lendacky@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.204.159.242]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3de5f93d-a440-42e1-af87-08d71c510d20
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR12MB3836; 
x-ms-traffictypediagnostic: DM6PR12MB3836:
x-microsoft-antispam-prvs: <DM6PR12MB383642141F39CE011FB31B79ECD70@DM6PR12MB3836.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(366004)(396003)(346002)(40224003)(199004)(189003)(51444003)(486006)(316002)(76176011)(5660300002)(66446008)(478600001)(71190400001)(6486002)(305945005)(7736002)(99286004)(66476007)(81156014)(81166006)(26005)(71200400001)(25786009)(53546011)(66556008)(6436002)(6506007)(386003)(11346002)(2616005)(476003)(186003)(64756008)(53936002)(446003)(110136005)(54906003)(66946007)(31686004)(6512007)(86362001)(14454004)(229853002)(14444005)(66066001)(31696002)(52116002)(6116002)(102836004)(4326008)(2906002)(3846002)(8676002)(8936002)(256004)(36756003)(6246003)(81973001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR12MB3836;
 H:DM6PR12MB3163.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ELkJqgWRQORqJoZoOhXAuSER4koWgQB2IvaKQbyyQ4lPt+9QPUBWX0W7KlJWk/QbIiB4eDVPxDsW03t5hsJihqphRBlzHuYu9sM6cO9aiDjZPL1NuhCw23Y+SWtosQRGYJmuy+DZ2TnnlxqJ2pWtuAQzG8QYG9oZ5fHN/0fWjGAhRotMVVM0cBKu4h0WKbhO1b7odNaQJ5AQq36fcQr2H9XrJQ+JscT20vvtdM5vPq/ySEiRacg93nXA8KcyXYBQ5w6TwJfbGOVJIJtAqQIaI+/Y/d9o6+bn2RQ7DyZcmwQZAo97hQ5+cFKooGAZB8p4GaDDNQ1wNdLzTsSBn50CRoQqxAX2XwtfvA2rF/F+vtVyK43H+5JoTAcklZ/81DVKFMXqFFZbdmvj6gjfdj6Sg0ebU4p7EXNFpGTQ5T6P3uA=
x-ms-exchange-transport-forked: True
Content-ID: <90AF5D7FF1C0014A9F7C643F3BE5F454@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3de5f93d-a440-42e1-af87-08d71c510d20
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 22:37:53.6447 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v83NFPWIIo25YTeRDTY1x3XCA3/eEI23GsWOdM6jDGS1DCKKU9MsQBu4/hpp1qYiZDUbJFW9T2dfKbI8HF8UEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3836
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_153757_070979_BA8B71AC 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.48 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "bhe@redhat.com" <bhe@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dave Anderson <anderson@redhat.com>,
 "ebiederm@xmission.com" <ebiederm@xmission.com>,
 "vgoyal@redhat.com" <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 8/1/19 8:05 PM, Dave Young wrote:
> Add kexec cc list.
> On 08/01/19 at 11:02pm, lijiang wrote:
>> Hi, Tom
>>
>> Recently, i ran into a problem about SME and used crash tool to check the vmcore as follow:
>>
>> crash> kmem -s | grep -i invalid
>> kmem: dma-kmalloc-512: slab: ffffe192c0001000 invalid freepointer: e5ffef4e9a040b7e
>> kmem: dma-kmalloc-512: slab: ffffe192c0001000 invalid freepointer: e5ffef4e9a040b7e
>>
>> And the crash tool reported the above error, probably, the main reason is that kernel does not
>> correctly handle the first 640k region when SME is enabled.
>>
>> When SME is enabled, the kernel and initramfs images are loaded into the decrypted memory, and
>> the backup area(first 640k) is also mapped as decrypted, but the first 640k data is copied to
>> the backup area in purgatory(). Please refer to this file: arch/x86/purgatory/purgatory.c
>> ......
>> static int copy_backup_region(void)
>> {
>>          if (purgatory_backup_dest) {
>>                  memcpy((void *)purgatory_backup_dest,
>>                         (void *)purgatory_backup_src, purgatory_backup_sz);
>>          }
>>          return 0;
>> }
>> ......
>>
>> arch/x86/kernel/machine_kexec_64.c
>> ......
>> machine_kexec_prepare()->
>> arch_update_purgatory()->
>> .....
>>
>> Actually, the firs 640k area is encrypted in the first kernel when SME is enabled, here kernel
>> copies the first 640k data to the backup area in purgatory(), because the backup area is mapped
>> as decrypted, this copying operation makes that the first 640k data is decrypted(decoded) and
>> saved to the backup area, but probably kernel can not aware of SME in purgatory(), which causes
>> kernel mistakenly read out the first 640k.
>>
>> In addition, i hacked kernel code as follow:
>>
>> diff --git a/fs/proc/vmcore.c b/fs/proc/vmcore.c
>> index 7bcc92add72c..a51631d36a7a 100644
>> --- a/fs/proc/vmcore.c
>> +++ b/fs/proc/vmcore.c
>> @@ -377,6 +378,16 @@ static ssize_t __read_vmcore(char *buffer, size_t buflen, loff_t *fpos,
>>                                              m->offset + m->size - *fpos,
>>                                              buflen);
>>                          start = m->paddr + *fpos - m->offset;
>> +                       if (m->paddr == 0x73f60000) {//the backup area's start address:0x73f60000
>> +                               tmp = read_from_oldmem(buffer, tsz, &start,
>> +                                               userbuf, false);
>> +                       } else
>>                                  tmp = read_from_oldmem(buffer, tsz, &start,
>>                                                 userbuf, mem_encrypt_active());
>>                          if (tmp < 0)
>>
>> Here, i used the crash tool to check the vmcore, i can see that the backup area is decrypted,
>> except for the dma-kmalloc-512. So i suspect that kernel did not correctly read out the first
>> 640k data to backup area. Do you happen to know how to deal with the first 640k area in purgatory()
>> when SME is enabled? Any idea?

I'm not all that familiar with kexec and purgatory, etc., but I think
that you want to setup the page table that is active when purgatory runs
so that the src and dest both have the SME encryption mask set in their
respective page table entries. This way, when the copy is performed,
everything is copied correctly.  Remember, encrypted data from one page
cannot be directly copied as unencrypted data and decrypted properly in
the new location (e.g. a page of zeroes encrypted at one address will not
appear the same as a page of zeroes encrypted at a different address).

Thanks,
Tom

>>
>> BTW: I' curious the reason why the address of dma-kmalloc-512k always falls into the first 640k
>> region, and i did not see the same issue on another machine.
>>
>> Machine:
>> Serial Number 	diesel-sys9079-0001
>> Model           AMD Diesel (A0C)
>> CPU             AMD EPYC 7601 32-Core Processor
>>
>>
>> Background:
>> On x86_64, the first 640k region is special because of some historical reasons. And kdump kernel will
>> reuse the first 640k region, so kernel will back up(copy) the first 640k region to a backup area in
>> purgatory(), in order not to rewrite the old region(640k) in kdump kernel, which makes sure that kdump
>> can read out the old memory from vmcore.
>>
>>
>> Thanks.
>> Lianbo
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
