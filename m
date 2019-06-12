Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1579F42F93
	for <lists+kexec@lfdr.de>; Wed, 12 Jun 2019 21:11:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ztL31lSD4zv+U/lSGgcGeTOZrl9hPvCJJPYnGkBypgU=; b=Ld5DSNUPLnKqYr
	pKqTEEYVugWUfA9bJUfjkFphBmwQpu/4SGgo35A3VB14XsVl9vJkZJLWIIhBmJIhsLKsPa13fQb7P
	R0DBeWvNm/NhdDzamp3xULdiwXWxt9nZFxhiuEbDFK3t30cS0jFn8IGJthLLAh3FMHo+8ENaneDWM
	9ttIjgZGDAyy4BvNQqDUg/+sXo6gFDOPtlfzfkl0F8O/rMmmrkUvaKrXMOAVU4vccpjqqZKbYaSDx
	87BJhR2t5dsd7xSFo+Ce6RK/6FkKGIFRFcnSVC0wqexjyecnkQl8+0mxPU3prEGbnJXYsgPD/jrXv
	MhUGzk0rJlRNGQLuI6hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb8eH-0004f2-Qd; Wed, 12 Jun 2019 19:11:05 +0000
Received: from mail-eopbgr810081.outbound.protection.outlook.com
 ([40.107.81.81] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb8eE-0004eV-CK
 for kexec@lists.infradead.org; Wed, 12 Jun 2019 19:11:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Jbonh7D9yySrPhrSCN5ofKxwfNf6CkqqLCtLK+vULo=;
 b=SqL9LIrrK5hIJMOI/tojfyPbiG+xI6Kixr+wHsGNt/p1PLM4x1HS1G9u5O1zJEpNcdFdM271xSVN6UMSGQIZYSwwNYzKKHC8uoXkwpZbnsMtI5+g9s8PLlwlT9jTRz5+qqKQHBWsrq9q+QwqISyBqzr7521xOHSdHhelF3KdBiQ=
Received: from DM6PR12MB3163.namprd12.prod.outlook.com (20.179.104.150) by
 DM6PR12MB3788.namprd12.prod.outlook.com (10.255.173.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Wed, 12 Jun 2019 19:11:00 +0000
Received: from DM6PR12MB3163.namprd12.prod.outlook.com
 ([fe80::bcaf:86d4:677f:9555]) by DM6PR12MB3163.namprd12.prod.outlook.com
 ([fe80::bcaf:86d4:677f:9555%6]) with mapi id 15.20.1987.012; Wed, 12 Jun 2019
 19:11:00 +0000
From: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>
To: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH 0/3 v11] add reserved e820 ranges to the kdump kernel e820
 table
Thread-Topic: [PATCH 0/3 v11] add reserved e820 ranges to the kdump kernel
 e820 table
Thread-Index: AQHU+XQhuS6zcOyueUSKdtOdksdWDqaAW4GAgBBiQoCAAKstgIAAWDEAgAAOS4CAAAFSgIAABcKAgAM4cYCAAoIQgIAA3gyA///InwCAAGjKAIAAEcCA
Date: Wed, 12 Jun 2019 19:10:59 +0000
Message-ID: <d89ef4ef-b85a-ea94-acdf-2eed5666ed78@amd.com>
References: <20190607174211.GN20269@zn.tnic>
 <20190608035451.GB26148@MiWiFi-R3L-srv> <20190608091030.GB32464@zn.tnic>
 <20190608100139.GC26148@MiWiFi-R3L-srv> <20190608100623.GA9138@zn.tnic>
 <20190608102659.GA9130@MiWiFi-R3L-srv> <20190610113747.GD5488@zn.tnic>
 <20190612015549.GI26148@MiWiFi-R3L-srv> <20190612151033.GJ32652@zn.tnic>
 <3dfa5985-008a-20d8-5171-cfe96807c303@amd.com>
 <20190612180724.GP32652@zn.tnic>
In-Reply-To: <20190612180724.GP32652@zn.tnic>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: DM5PR13CA0008.namprd13.prod.outlook.com
 (2603:10b6:3:23::18) To DM6PR12MB3163.namprd12.prod.outlook.com
 (2603:10b6:5:182::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Thomas.Lendacky@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.204.77.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d8a5aa9a-a461-4a9b-0023-08d6ef69b270
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR12MB3788; 
x-ms-traffictypediagnostic: DM6PR12MB3788:
x-microsoft-antispam-prvs: <DM6PR12MB3788514C2AA628FCB762687CECEC0@DM6PR12MB3788.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39860400002)(376002)(396003)(366004)(189003)(199004)(54094003)(4326008)(66066001)(31686004)(478600001)(8676002)(186003)(99286004)(14454004)(52116002)(86362001)(36756003)(76176011)(81156014)(81166006)(6246003)(316002)(72206003)(31696002)(446003)(26005)(386003)(53546011)(2906002)(102836004)(54906003)(8936002)(53936002)(6506007)(2616005)(486006)(229853002)(11346002)(476003)(71190400001)(71200400001)(256004)(4744005)(68736007)(5660300002)(6512007)(305945005)(6916009)(7736002)(6486002)(25786009)(66446008)(66946007)(6436002)(3846002)(7416002)(66476007)(73956011)(66556008)(64756008)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR12MB3788;
 H:DM6PR12MB3163.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hDvBH8ja0fdCUOW0o7shkpLdYikY2f2cJHay2Eab2CBokqUcnpSJ7mfLL2UBcCNhVvyhmVkAd80FH2AmTw37ACYVYW6+ZC5LiVOuFU18T6U5Eo1QdPP8s2Ux2yeEf4FSb7NQ1zxuriUCelf/yOacjkH5XyKUfZM+5EDy/UGle3v86E3Do/BXktgbRHoKGyi2wmOp3W9glW2e8variSailHU8AVY5tCKKGyCX0ZUf0wqGxXhdcmcZgIhO1950WAu0VJAsOE1kCBROfN/Bp3rFPwXUPuExIei8JcTYq1Mm7cHQWpMNa221P5VJJvjkPt2zaDlStSYCgOofFxIVfb8Yn2bNeWN92KogSfOgz0Bjoph0Pq9cKkcpcid/alynD4mvcMGpwOSzioCXN5mcnBw5XJvPfzhjSqs54mb8dYPd2UY=
Content-ID: <6B2A2BFAEA6F6448B86755F60ED6E82C@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8a5aa9a-a461-4a9b-0023-08d6ef69b270
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 19:11:00.0762 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tlendack@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3788
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_121102_428414_B9B512F4 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "x86@kernel.org" <x86@kernel.org>, lijiang <lijiang@redhat.com>,
 Baoquan He <bhe@redhat.com>, "peterz@infradead.org" <peterz@infradead.org>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mingo@redhat.com" <mingo@redhat.com>, "luto@kernel.org" <luto@kernel.org>,
 "hpa@zytor.com" <hpa@zytor.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "dyoung@redhat.com" <dyoung@redhat.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 6/12/19 1:07 PM, Borislav Petkov wrote:
> On Wed, Jun 12, 2019 at 04:52:22PM +0000, Lendacky, Thomas wrote:
>> I think the discussion ended up being that debuginfo wasn't being stripped
>> from the kernel and initrd (mainly the initrd).  What are the sizes of
>> the kernel and initrd that you are loading for kdump via kexec?
>>
>> From previous post:
>>   kexec -s -p /boot/vmlinuz-5.2.0-rc3+ --initrd=/boot/initrd.img-5.2.0-rc3+
> 
> You mean those sizes?
> 
> $ ls -lh /boot/vmlinuz-5.2.0-rc3+ /boot/initrd.img-5.2.0-rc3+
> -rw-r--r-- 1 root root 7.8M Jun 10 12:53 /boot/initrd.img-5.2.0-rc3+
> -rw-r--r-- 1 root root 6.7M Jun 10 12:53 /boot/vmlinuz-5.2.0-rc3+
> 
> That should fit easily in 256M :)

Certainly seems like they should. I know there are other things that are
loaded, but that should be plenty of room. I wonder if Baoquan or Lianbo
could track where things are being loaded to see if everything is being
calculated and placed properly.

Thanks,
Tom

> 
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
