Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECC59E9BA
	for <lists+kexec@lfdr.de>; Tue, 27 Aug 2019 15:43:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rT439+x6CQlX1skapZXaJgsa5xZ9148c5pq4DlgyOF0=; b=UAAsQGrzfxS65V
	mrTTYOVwVf6Azw4x5j8FfnnNRyVQcPZjUudhwqUHujHxb9L6PJXSvmlGZUtTagUC3FriOCB0Lw1vq
	zo7bBmxh2ZZZswcUSIkpu8Q2wctDARFF1L1oZmeZ1znKMu5YHbEi8CBu7mE9heZJPpk8P2Lhnle8J
	VD4xVBiAUB90HOhsJVaQkDrXEbtcwuKT4U0MsqvRRHj+hV7g6u7dn+Bs67BXjmsTLSU8CzZmqgw/L
	HriFYMv8jFq9BzhlsShw5Zd35C8z14VZ8+rjJ5qeN9lJY6KbnM/pekL3Gw2aBaYuz3K84Zn5XhuBp
	NtMg5o66ki4LhSvJS6jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bkm-0001dU-6n; Tue, 27 Aug 2019 13:43:20 +0000
Received: from mail-eopbgr680083.outbound.protection.outlook.com
 ([40.107.68.83] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bkg-0001VI-DM
 for kexec@lists.infradead.org; Tue, 27 Aug 2019 13:43:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=THpqOUKAoPP66a8ST3kVCrgamTO2wQlPzpUPRDzITSPMiNTGYv1o7omeOxW31drhn8KoLNW4vtqLsHQmWTf6ka5v61+reMwef4IZnjibHBAelQ/S3JWd8ozfX/qLNr2MSqGQ7TjmydvppjhraZ65qe9lb5U9YhmBrk5rGZPz5VOYPDFHVzxjumd8UDkZqOxwqwcYgcDh9OWSKsgcOoYPVI9EgyeE1bcm3c8c/163HJzmzG9HDbKUwQDo7Gp7DzHGmthkDrmtEgs3wv+KvQA69jy4E+r/EmsGO9ffJpT2GvtsemcbBzr5JlQRnbLzojR/OW1u2tJpWMRXkrl8OuWJsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d8cJtD6NtXhA2AXQd5uLKNOKR3IJuEKELYrG/D2oADo=;
 b=UtDdRu5iVX6J7oqakjDPmCSHvYttsifKgi5pBU1jd/1OT6aQ2cCZQ4HZ9itP9V98+OETiaZtJT2TCTbR1y5Fj02xOHc85rtwWzqo1HXlWABPRDb3TiuFm8zyZqwM7vnpKbB1iNrdgtEg86CZy1eTaYU5XlXxLFh4kKezGYEVOiIaKn5HOc903fs2yE7b/uJPWTEygxydbzQP4E78TPxzexItQVDyTD4etKC80rzsXr66xmzkC/6VYIAkIO4Ai+42fz99rpOh/ukRsB5+jVHvrLU4S0KwtjU+pO4BSx3Dl+MSTSzoMdw+TQ/e4kKAM5X5DX0A+umhVTp6g3Wc/0+ygw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d8cJtD6NtXhA2AXQd5uLKNOKR3IJuEKELYrG/D2oADo=;
 b=O5+oIS0Wec31B/Srw92r3rLfUUsKyNH29b2z7RHFL2OaXeZdwflCujgmgCOPB2iOr5Xjgpi36D8vIyMm5AXVkHNJRWV7tmq2Q0zvdSz05f8IFJbSelcwO/lqv+fSlHez49H2C3q6EtFwvZd/0UhZAxH6gJ0u7xvhg6aHSnfPlr0=
Received: from DM6PR12MB3163.namprd12.prod.outlook.com (20.179.104.150) by
 DM6PR12MB2876.namprd12.prod.outlook.com (20.179.71.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.19; Tue, 27 Aug 2019 13:43:10 +0000
Received: from DM6PR12MB3163.namprd12.prod.outlook.com
 ([fe80::585:2d27:6e06:f9b0]) by DM6PR12MB3163.namprd12.prod.outlook.com
 ([fe80::585:2d27:6e06:f9b0%7]) with mapi id 15.20.2199.021; Tue, 27 Aug 2019
 13:43:10 +0000
From: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>
To: Kairui Song <kasong@redhat.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] x86/kdump: Reserve extra memory when SME or SEV is
 active
Thread-Topic: [PATCH v2] x86/kdump: Reserve extra memory when SME or SEV is
 active
Thread-Index: AQHVW8kp9JVn6hQ7UE6olQKKwzsq7acPAyUA
Date: Tue, 27 Aug 2019 13:43:10 +0000
Message-ID: <dfb623dd-6c68-14a9-7ef5-ea8c6b5a2567@amd.com>
References: <20190826044535.9646-1-kasong@redhat.com>
In-Reply-To: <20190826044535.9646-1-kasong@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0501CA0083.namprd05.prod.outlook.com
 (2603:10b6:803:22::21) To DM6PR12MB3163.namprd12.prod.outlook.com
 (2603:10b6:5:182::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Thomas.Lendacky@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.204.77.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 73b46839-5ab8-43b8-2d04-08d72af47ffe
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR12MB2876; 
x-ms-traffictypediagnostic: DM6PR12MB2876:
x-microsoft-antispam-prvs: <DM6PR12MB2876EACA38571768DF2A24E0ECA00@DM6PR12MB2876.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(39860400002)(136003)(366004)(376002)(199004)(189003)(478600001)(4326008)(8936002)(14444005)(256004)(186003)(6486002)(2501003)(102836004)(6512007)(6246003)(476003)(31686004)(66066001)(305945005)(31696002)(53546011)(446003)(2906002)(86362001)(76176011)(6116002)(6436002)(8676002)(64756008)(110136005)(66556008)(66476007)(26005)(66446008)(66946007)(6506007)(316002)(7736002)(386003)(81156014)(25786009)(52116002)(81166006)(71190400001)(71200400001)(36756003)(14454004)(486006)(53936002)(3846002)(5660300002)(7416002)(11346002)(99286004)(2616005)(229853002)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR12MB2876;
 H:DM6PR12MB3163.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JSb186GUdXs2sWQHD7SZzYV048xwpmbhnJhkIuH318zwO3b4OjcMYtuMas8U/1IWWX1iZPlx7DOWspPH9wy+GobQXYIttZBA30+SxgaTrH/CLI/jNyA/FlALZdBpqLwhyy4ylIsRZbzaUmYTnTe3wOGIvVT9DY2L1bx0t66VnpoBJrkCc70wvqz/D1s/llaZoMgySsJXtyRAv3BgM/x6H0VKCJ2/9mFmoeP2t7czvDXFq9WXtcyImG3+1o8jxn6fuURwnoJQ7s1cv+F+ahNjpfgygiI2uvAev/hsoZKbiY8LvnvW+BLsMA1XR5iabAZ+qzY0VVjRVElq0/aGH0SBMsMdJCWUutyGk8c40op9yDkFVzbVH1jLWJIe5CfY34QsnA5kb5OUSb9fdecMr34zqp+gCsRWl5agALnujIFFRNI=
x-ms-exchange-transport-forked: True
Content-ID: <2DC00BA7C27A87489CB7E42FBC4B6659@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73b46839-5ab8-43b8-2d04-08d72af47ffe
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 13:43:10.5434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GoqKnIr8MvgNgG4c76G/XYUCMg7fMMWfLecLjj40nxPP4UULDem20vNl5g0ogdOtbh5yufaIZ4rEZhuWAqdmHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2876
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_064314_478721_A5967F27 
X-CRM114-Status: GOOD (  25.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.83 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Lianbo Jiang <lijiang@redhat.com>, Baoquan He <bhe@redhat.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 8/25/19 11:45 PM, Kairui Song wrote:
> Since commit c7753208a94c ("x86, swiotlb: Add memory encryption support"),
> SWIOTLB will be enabled even if there is less than 4G of memory when SME
> is active, to support DMA of devices that not support address with the
> encrypt bit.
> 
> And commit aba2d9a6385a ("iommu/amd: Do not disable SWIOTLB if SME is
> active") make the kernel keep SWIOTLB enabled even if there is an IOMMU.
> 
> Then commit d7b417fa08d1 ("x86/mm: Add DMA support for SEV memory
> encryption") will always force SWIOTLB to be enabled when SEV is active
> in all cases.
> 
> Now, when either SME or SEV is active, SWIOTLB will be force enabled,
> and this is also true for kdump kernel. As a result kdump kernel will
> run out of already scarce pre-reserved memory easily.
> 
> So when SME/SEV is active, reserve extra memory for SWIOTLB to ensure
> kdump kernel have enough memory, except when "crashkernel=size[KMG],high"
> is specified or any offset is used. As for the high reservation case, an
> extra low memory region will always be reserved and that is enough for
> SWIOTLB. Else if the offset format is used, user should be fully aware
> of any possible kdump kernel memory requirement and have to organize the
> memory usage carefully.
> 
> Signed-off-by: Kairui Song <kasong@redhat.com>

Reviewed-by: Tom Lendacky <thomas.lendacky@amd.com>

> 
> ---
> Update from V1:
> - Use mem_encrypt_active() instead of "sme_active() || sev_active()"
> - Don't reserve extra memory when ",high" or "@offset" is used, and
>   don't print redundant message.
> - Fix coding style problem
> 
>  arch/x86/kernel/setup.c | 31 ++++++++++++++++++++++++++++---
>  1 file changed, 28 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
> index bbe35bf879f5..221beb10c55d 100644
> --- a/arch/x86/kernel/setup.c
> +++ b/arch/x86/kernel/setup.c
> @@ -528,7 +528,7 @@ static int __init reserve_crashkernel_low(void)
>  
>  static void __init reserve_crashkernel(void)
>  {
> -	unsigned long long crash_size, crash_base, total_mem;
> +	unsigned long long crash_size, crash_base, total_mem, mem_enc_req;
>  	bool high = false;
>  	int ret;
>  
> @@ -550,6 +550,15 @@ static void __init reserve_crashkernel(void)
>  		return;
>  	}
>  
> +	/*
> +	 * When SME/SEV is active, it will always required an extra SWIOTLB
> +	 * region.
> +	 */
> +	if (mem_encrypt_active())
> +		mem_enc_req = ALIGN(swiotlb_size_or_default(), SZ_1M);
> +	else
> +		mem_enc_req = 0;
> +
>  	/* 0 means: find the address automatically */
>  	if (!crash_base) {
>  		/*
> @@ -563,11 +572,19 @@ static void __init reserve_crashkernel(void)
>  		if (!high)
>  			crash_base = memblock_find_in_range(CRASH_ALIGN,
>  						CRASH_ADDR_LOW_MAX,
> -						crash_size, CRASH_ALIGN);
> -		if (!crash_base)
> +						crash_size + mem_enc_req,
> +						CRASH_ALIGN);
> +		/*
> +		 * For high reservation, an extra low memory for SWIOTLB will
> +		 * always be reserved later, so no need to reserve extra
> +		 * memory for memory encryption case here.
> +		 */
> +		if (!crash_base) {
> +			mem_enc_req = 0;
>  			crash_base = memblock_find_in_range(CRASH_ALIGN,
>  						CRASH_ADDR_HIGH_MAX,
>  						crash_size, CRASH_ALIGN);
> +		}
>  		if (!crash_base) {
>  			pr_info("crashkernel reservation failed - No suitable area found.\n");
>  			return;
> @@ -575,6 +592,7 @@ static void __init reserve_crashkernel(void)
>  	} else {
>  		unsigned long long start;
>  
> +		mem_enc_req = 0;
>  		start = memblock_find_in_range(crash_base,
>  					       crash_base + crash_size,
>  					       crash_size, 1 << 20);
> @@ -583,6 +601,13 @@ static void __init reserve_crashkernel(void)
>  			return;
>  		}
>  	}
> +
> +	if (mem_enc_req) {
> +		pr_info("Memory encryption is active, crashkernel needs %ldMB extra memory\n",
> +			(unsigned long)(mem_enc_req >> 20));
> +		crash_size += mem_enc_req;
> +	}
> +
>  	ret = memblock_reserve(crash_base, crash_size);
>  	if (ret) {
>  		pr_err("%s: Error reserving crashkernel memblock.\n", __func__);
> 
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
