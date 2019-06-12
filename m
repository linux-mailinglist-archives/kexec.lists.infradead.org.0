Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F94942CB4
	for <lists+kexec@lfdr.de>; Wed, 12 Jun 2019 18:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmZotMyuveCeWVLM0OBKiRqS2uNbXD+++kAEmMoBDRo=; b=KO0f2B5fWS4m+G
	l4uKrTg8tjhwBXwc+lQn9KLaDSZefXp8a7VBCNCiTTpB3/jA/Ankg4NBUvTp/W+4heQVovLTVzD3+
	/N4C0uCnivhKLEzfHd8yuUqKb8Q5+BOCiecAGX8NZ44W4OKcPORZFTJh0HIEoDFZKIzIeZA/PIRM8
	3YF+2/X/rRNciowVmtpkQ53cTV+xXXH/Ja6/aX8I3eIbGf+oQyDMxsxjGqg77wWpnRGiXJrgiuHLw
	1HjLLDBrbtEjCEF1J6hDuOuSAr2NXW3V6H488NzmwnESLxumDuoVS1B8SPk7Snrlh4ZW90z+ux/+x
	7mATMUwnzDfqGlog7sqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb6U9-0006tW-Pq; Wed, 12 Jun 2019 16:52:29 +0000
Received: from mail-eopbgr680059.outbound.protection.outlook.com
 ([40.107.68.59] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb6U5-0006sg-Rc
 for kexec@lists.infradead.org; Wed, 12 Jun 2019 16:52:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OZSzOWGP9teX1VGTd3B75IMFarAf4hyW5qmyjZsketE=;
 b=UAdQ4j0vYX2+z/eUlZ+RLYtIpiSi3HZ7o6mPuy6ZaRGqtUVWcV+2TjxcbWJ2iyhfpz5iN1h35haCjMJLanFACUBg4bw1FKf6e45Gu1KuhNoJRB/OapRxztMLmLCy5lCAmqND+CNMgAWj+AmN4ywf41xCNWJ7YjV4xX3vzHzizJ0=
Received: from DM6PR12MB3163.namprd12.prod.outlook.com (20.179.104.150) by
 DM6PR12MB2971.namprd12.prod.outlook.com (20.178.29.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Wed, 12 Jun 2019 16:52:23 +0000
Received: from DM6PR12MB3163.namprd12.prod.outlook.com
 ([fe80::bcaf:86d4:677f:9555]) by DM6PR12MB3163.namprd12.prod.outlook.com
 ([fe80::bcaf:86d4:677f:9555%6]) with mapi id 15.20.1987.012; Wed, 12 Jun 2019
 16:52:23 +0000
From: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>
To: Borislav Petkov <bp@alien8.de>, Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH 0/3 v11] add reserved e820 ranges to the kdump kernel e820
 table
Thread-Topic: [PATCH 0/3 v11] add reserved e820 ranges to the kdump kernel
 e820 table
Thread-Index: AQHU+XQhuS6zcOyueUSKdtOdksdWDqaAW4GAgBBiQoCAAKstgIAAWDEAgAAOS4CAAAFSgIAABcKAgAM4cYCAAoIQgIAA3gyAgAAccAA=
Date: Wed, 12 Jun 2019 16:52:22 +0000
Message-ID: <3dfa5985-008a-20d8-5171-cfe96807c303@amd.com>
References: <20190423013007.17838-1-lijiang@redhat.com>
 <12847a03-3226-0b29-97b5-04d404410147@redhat.com>
 <20190607174211.GN20269@zn.tnic> <20190608035451.GB26148@MiWiFi-R3L-srv>
 <20190608091030.GB32464@zn.tnic> <20190608100139.GC26148@MiWiFi-R3L-srv>
 <20190608100623.GA9138@zn.tnic> <20190608102659.GA9130@MiWiFi-R3L-srv>
 <20190610113747.GD5488@zn.tnic> <20190612015549.GI26148@MiWiFi-R3L-srv>
 <20190612151033.GJ32652@zn.tnic>
In-Reply-To: <20190612151033.GJ32652@zn.tnic>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: DM5PR06CA0097.namprd06.prod.outlook.com
 (2603:10b6:4:3a::38) To DM6PR12MB3163.namprd12.prod.outlook.com
 (2603:10b6:5:182::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Thomas.Lendacky@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.204.77.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cf491eea-06b3-4b04-177f-08d6ef56570f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR12MB2971; 
x-ms-traffictypediagnostic: DM6PR12MB2971:
x-microsoft-antispam-prvs: <DM6PR12MB297118D88FD13B8485E2DD58ECEC0@DM6PR12MB2971.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(366004)(396003)(136003)(39860400002)(54094003)(189003)(199004)(66556008)(64756008)(186003)(26005)(31686004)(476003)(229853002)(66476007)(68736007)(66946007)(305945005)(73956011)(66446008)(7736002)(4326008)(2616005)(11346002)(52116002)(6246003)(6436002)(25786009)(66066001)(446003)(6512007)(76176011)(6486002)(256004)(14444005)(486006)(53936002)(71190400001)(2906002)(8936002)(54906003)(6116002)(53546011)(6506007)(99286004)(7416002)(5660300002)(71200400001)(386003)(86362001)(8676002)(14454004)(72206003)(81166006)(31696002)(316002)(81156014)(102836004)(478600001)(110136005)(36756003)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR12MB2971;
 H:DM6PR12MB3163.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lj20g0pmKS9uALHiIqOgvy2VCPug/Ap5cGFsAUWxLlb8DE9JHl0pGAJLvS90/Z9WHD2qVSDg9c1m5O2eKcDQoRu5cyhOq2hVBr/xKUjOeZQRiMWVhoYvfrH997evT4mksHz1EzEzvFZC32iVFFipXi3OcWADa/Fk+3F1whsn0nTFhOnWtjkCdv82KpNkG/2D+rIJZVx073x5qWdMvaLMRQ6ObUgsuD66ZiVXZ2A/xypWIBuys7t33qs7PmkqKQuyZH1lZklCXvN2Rz1+SDePG5oVtl1zwfczRGVq09SmV1O8JYbfM1PFuFxcS7SEEAdKubkkSnjplI36Ql6LHMx2/nBLjniOVzyH+obecYkTIQ7vzSiqO9sP3NJpFm9Xn0RP2LcxDcfVqSf4W9OzxrM/bJSZ9N9AAQlkOLQRIsxL8TI=
Content-ID: <6679569A387EBA448563B6CE4288BD12@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf491eea-06b3-4b04-177f-08d6ef56570f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 16:52:22.9414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tlendack@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2971
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_095226_000989_382FA032 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.59 listed in list.dnswl.org]
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
 "peterz@infradead.org" <peterz@infradead.org>,
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

On 6/12/19 10:10 AM, Borislav Petkov wrote:
> On Wed, Jun 12, 2019 at 09:55:49AM +0800, Baoquan He wrote:
>> With further investigation, the failure after applying Tom's patch is
>> caused by OOM. When increase crashkernel reservation to 512M, kdump
>> kernel can boot successfully. I noticed your crashkernel reservation is
>> 256M, that will fail and stuck there very possibly.
>>
>> So Tom's patch can fix the issue. We need further check why much more
>> crashkernel memory is needed on those AMD boxes with sme support..
> 
> Yes, 256M for a kexec kernel sounds pretty much enough to me. So there's
> something else at play here. I wonder if that workarea after _end, from
> Tom's patch, needs so much room...

I think the discussion ended up being that debuginfo wasn't being stripped
from the kernel and initrd (mainly the initrd).  What are the sizes of
the kernel and initrd that you are loading for kdump via kexec?

From previous post:
  kexec -s -p /boot/vmlinuz-5.2.0-rc3+ --initrd=/boot/initrd.img-5.2.0-rc3+

Thanks,
Tom

> 
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
