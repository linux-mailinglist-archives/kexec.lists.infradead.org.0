Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9DF360C2
	for <lists+kexec@lfdr.de>; Wed,  5 Jun 2019 18:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yR452i0ywh+lriVpSAgJOHBM3btEMS4zYEUxeNOo088=; b=VPjXv3rvR0BD+l
	XqQCFPz/0eH3GrKyhyc95peyLBp8psJaOD96hQ77tcYSxwS2TUEYmCSRhG4Ifz5bknpahmcVpKNnl
	1NO8PFkqoQmsLQDCj+ogbYYlcqptwIeiyLuFdn6VTHXu7NaF2BCbmJL3gYIm733upUpRHUewhQvP4
	pDDVY8qRloGDvnt87O1ILsNT/xZ1a/D3uY65Zq/tz1CK2MU8AEIQT0/MUz+eFCQ1OaEhHZwS8nfXP
	Ql/2WgNtzmCQhhKMjZqpC7dFQRl06FCuF3oQ8hClj+Yohq6f6LHRgs7cczT6Dlb0VJxikp4cCWbAG
	1+tdDsrU7SDHefLtTB1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYYOn-00086v-RP; Wed, 05 Jun 2019 16:04:25 +0000
Received: from mail-eopbgr740081.outbound.protection.outlook.com
 ([40.107.74.81] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYYOh-00086S-2Z
 for kexec@lists.infradead.org; Wed, 05 Jun 2019 16:04:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DU3Dxs3YR3VUOaJWBsLc32Dxjtf/IRrmdna1MMkd3x0=;
 b=TvOPPdgZ2WBSoqf7R8u9aYotWJQ3obTKMymhX47n74m72UguQcMnGnji5k7emvEen089mEtvvICNpVp7RYWHEAuC+1rzEUXKZto42o05+8TBdGt45VMma2jLuwFQC0F/EgXUkx/JVnJYBkPsHEPwHfNbGjfdY3CSqpDE5Vfe9jw=
Received: from DM6PR12MB3163.namprd12.prod.outlook.com (20.179.104.150) by
 DM6PR12MB3035.namprd12.prod.outlook.com (20.178.30.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Wed, 5 Jun 2019 16:04:15 +0000
Received: from DM6PR12MB3163.namprd12.prod.outlook.com
 ([fe80::bcaf:86d4:677f:9555]) by DM6PR12MB3163.namprd12.prod.outlook.com
 ([fe80::bcaf:86d4:677f:9555%6]) with mapi id 15.20.1943.018; Wed, 5 Jun 2019
 16:04:15 +0000
From: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>
To: Baoquan He <bhe@redhat.com>
Subject: Re: The current SME implementation fails kexec/kdump kernel booting.
Thread-Topic: The current SME implementation fails kexec/kdump kernel booting.
Thread-Index: AQHVGtxpl7Okj5q6IUu+1zsUud1soaaLUoUAgADqpACAAP2/AA==
Date: Wed, 5 Jun 2019 16:04:14 +0000
Message-ID: <0d9fba9d-7bbe-a7c7-dfe4-696da0dfecc4@amd.com>
References: <20190604134952.GC26891@MiWiFi-R3L-srv>
 <508c2853-dc4f-70a6-6fa8-97c950dc31c6@amd.com>
 <20190605005600.GF26891@MiWiFi-R3L-srv>
In-Reply-To: <20190605005600.GF26891@MiWiFi-R3L-srv>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0201CA0018.namprd02.prod.outlook.com
 (2603:10b6:803:2b::28) To DM6PR12MB3163.namprd12.prod.outlook.com
 (2603:10b6:5:182::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Thomas.Lendacky@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.204.77.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 636a69d6-73fe-45fc-d339-08d6e9cf74ba
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR12MB3035; 
x-ms-traffictypediagnostic: DM6PR12MB3035:
x-microsoft-antispam-prvs: <DM6PR12MB303568A190696939DBD2B42CEC160@DM6PR12MB3035.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(39860400002)(376002)(136003)(396003)(189003)(199004)(478600001)(66066001)(73956011)(14444005)(72206003)(305945005)(8936002)(66446008)(4326008)(36756003)(14454004)(386003)(66476007)(256004)(6246003)(26005)(25786009)(5660300002)(76176011)(6506007)(68736007)(53546011)(66556008)(64756008)(476003)(316002)(81166006)(7736002)(6436002)(2616005)(102836004)(2906002)(52116002)(229853002)(11346002)(66946007)(99286004)(71190400001)(86362001)(71200400001)(6486002)(31686004)(31696002)(8676002)(54906003)(6116002)(3846002)(6512007)(6916009)(446003)(53936002)(186003)(81156014)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR12MB3035;
 H:DM6PR12MB3163.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mb0wgSEArtYEQaeZKi97Vu+LNYw/J/ymDoDk4AlGsHEjgZZbLdftEakjs9BdI7EPPop7FyUhhzoYSJWZX2Hui+RImoblt5j7TRpxYqA1SaVdhqv/qSiZlYjkLWk+Holuw6uo4ne0K6NGcwJQvpHQliuUQUfvGluRAjWRaXsEFSezDuLxLzq5JPh4QBiALsuLuS2oI5sfpFFCAAV7tC4JMDBl9NoMO38upScYxGPbO6J4Bb04OH5DJkdpt/78QzL10Y5dHt2VdfSeyUBOHfk+qsOHjWOJqac0ikBYwA0Rrkl7pb1Z2qjF51STEyBzZGF98eQTRg0btRqWB/KI5OTdij7GjH/FE6lGWsK+PH/qquNiq/TCCZ6ZpPtvdw9okmy3ZNZx8lNSPRmvc1DzQO7TZ7w5eD1CXnUOQ/0FB0mE+p0=
Content-ID: <B84EE748BF0CF44F9E7ACFBC8B966561@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 636a69d6-73fe-45fc-d339-08d6e9cf74ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2019 16:04:15.1593 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tlendack@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_090419_205134_2817BA8B 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 6/4/19 7:56 PM, Baoquan He wrote:
> On 06/04/19 at 03:56pm, Lendacky, Thomas wrote:
>> On 6/4/19 8:49 AM, Baoquan He wrote:
>>> Hi Tom,
>>>
>>> Lianbo reported kdump kernel can't boot well with 'nokaslr' added, and
>>> have to enable KASLR in kdump kernel to make it boot successfully. This
>>> blocked his work on enabling sme for kexec/kdump. And on some machines
>>> SME kernel can't boot in 1st kernel.
>>>
>>> I checked code of SME implementation, and found out the root cause. The
>>> above failures are caused by SME code, sme_encrypt_kernel(). In
>>> sme_encrypt_kernel(), you get a 2M of encryption work area as intermediate
>>> buffer to encrypt kernel in-place. And the work area is just after _end of
>>> kernel.
>>
>> I remember worrying about something like this back when I was testing the
>> kexec support. I had come up with a patch to address it, but never got the
>> time to test and submit it.  I've included it here if you'd like to test
>> it (I haven't done run this patch in quite some time). If it works, we can
>> think about submitting it.
> 
> Thanks for your quick response and making this patch, Tom.
> 
> Tested on a speedway machine, it entered into kernel, but failed in
> below stage. Tested two times, always happened.

Is this the initial kernel boot or the kexec kernel boot?

It looks like this is related to the initrd/initramfs decryption. Not
sure what could be happening there. I just tried the patch on my Naples
system and a 5.2.0-rc3 kernel and have been able to repeatedly kexec boot
a number of times so far.

Thanks,
Tom

> 
> 
> [    4.978521] Freeing unused decrypted memory: 2040K
> [    4.983800] Freeing unused kernel image memory: 2344K
> [    4.988943] Write protecting the kernel read-only data: 18432k
> [    4.995306] Freeing unused kernel image memory: 2012K
> [    5.000488] Freeing unused kernel image memory: 256K
> [    5.005540] Run /init as init process
> [    5.009443] Kernel panic - not syncing: Attempted to kill init! exitcode=0x00007f00
> [    5.017230] CPU: 0 PID: 1 Comm: init Not tainted 5.2.0-rc2+ #38
> [    5.023251] Hardware name: AMD Corporation Speedway/Speedway, BIOS RSW1004B 10/18/2017
> [    5.031299] Call Trace:
> [    5.033793]  dump_stack+0x46/0x60
> [    5.037169]  panic+0xfb/0x2cb
> [    5.040191]  do_exit.cold.21+0x59/0x81
> [    5.044004]  do_group_exit+0x3a/0xa0
> [    5.047640]  __x64_sys_exit_group+0x14/0x20
> [    5.051899]  do_syscall_64+0x55/0x1c0
> [    5.055627]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [    5.060764] RIP: 0033:0x7fa1b1fc9e2e
> [    5.064404] Code: Bad RIP value.
> [    5.067687] RSP: 002b:00007fffc5abb778 EFLAGS: 00000202 ORIG_RAX: 00000000000000e7
> [    5.075296] RAX: ffffffffffffffda RBX: 00007fa1b1fd2528 RCX: 00007fa1b1fc9e2e
> [    5.082625] RDX: 000000000000007f RSI: 000000000000003c RDI: 000000000000007f
> [    5.089879] RBP: 00007fa1b21d8d00 R08: 00000000000000e7 R09: 00007fffc5abb688
> [    5.097134] R10: 0000000000000000 R11: 0000000000000202 R12: 0000000000000002
> [    5.104386] R13: 0000000000000001 R14: 00007fa1b21d8d40 R15: 00007fa1b21d8d30
> [    5.111645] Kernel Offset: disabled
> [    5.423002] Rebooting in 10 seconds..
> [   15.429641] ACPI MEMORY or I/O RESET_REG.
> 
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
