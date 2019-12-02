Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B39CE10F3A4
	for <lists+kexec@lfdr.de>; Tue,  3 Dec 2019 00:55:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BQKzVJCu2JCXo7fWzj/QQqW3awwIJBfqDqyfQo858XU=; b=Bg5FYZ2jyOyeK9MAdQbcxNSVB
	REj/rX7XEw3qeF7eiT+sjj9Y14Wzi4vdCIybTV68d+J4QWdwiZGVUnuvPlkyoG5ZPinFTRU1ee5en
	oREF7UnCVeJ8UdmyxF11jqIIse+98rxzGPt58WSPajQgrRCTQ4MW6Fo2BIBFUSn/SKUv7nZuHE1Pz
	mjgVHCZ44N1+s614qoDYSAvmA4uowNLwT/rmkZtVkBZQ34SWnXI4Hj5yq6Xg0EgcRYBydffnHo2kq
	omCf2leMy8GhIHESFQoE0o8JZ5+Mtd0vVeGWJrn04gVpmZALqF6phlyHqlKb1ZPnptp+eE5mSylkr
	vCZbyvBlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibvXK-0004Dz-Ix; Mon, 02 Dec 2019 23:55:26 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibvXH-0004DA-D1
 for kexec@lists.infradead.org; Mon, 02 Dec 2019 23:55:25 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB2NsSva156270
 for <kexec@lists.infradead.org>; Mon, 2 Dec 2019 23:55:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=LXYQV/Vc7e3a8LlUyQzotEtbzrr01FOhp55FbkzJERU=;
 b=jqp8CBAoDwwvEz4S6ywj8cLRIx5f/AWp4l3rZWJqrRuav37EeByOawdDkJgTvVzh7UeH
 ETNzWyw61u4sNIjzn8ZKAHP63MEv+NLhuyXCgK136ue+KjNN6Aix2MoRBgpWFA9TXUiv
 M9RCd+qxnBzI5wsRmdxc9p5vCaduMBl4IZfDypI/lA/hKCWCku2B6i3cyrloWandAKVU
 oRcGfaeRwb3/RsvCEB9wRGkHJSy3nD3jnFpeCDQ2Cm0xQ5PUu2kJMRm5lDJCmLlfcsd2
 hwhL8hGAZSnEUis3Luta/kM7kdx7ex3/owGsp/8ukXwzmd4yvmvcJpOTGg9by9eumPt6 Qg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2wkgcq3jdx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Mon, 02 Dec 2019 23:55:15 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB2NsT46005991
 for <kexec@lists.infradead.org>; Mon, 2 Dec 2019 23:55:15 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2wn8k1bbkj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Mon, 02 Dec 2019 23:55:15 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xB2NtE0x024925
 for <kexec@lists.infradead.org>; Mon, 2 Dec 2019 23:55:14 GMT
Received: from [192.168.1.126] (/47.220.71.223)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 02 Dec 2019 15:55:14 -0800
Subject: Re: [RESEND PATCH v5 1/5] crash_core, vmcoreinfo: Append
 'MAX_PHYSMEM_BITS' to vmcoreinfo
To: kexec@lists.infradead.org
References: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
 <1575057559-25496-2-git-send-email-bhsharma@redhat.com>
From: John Donnelly <John.P.Donnelly@Oracle.com>
Message-ID: <07946b28-3855-f8e9-52bb-b5452758a18c@Oracle.com>
Date: Mon, 2 Dec 2019 17:55:12 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <1575057559-25496-2-git-send-email-bhsharma@redhat.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9459
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912020205
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9459
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912020205
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_155523_529327_D1C08F09 
X-CRM114-Status: GOOD (  25.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 11/29/19 1:59 PM, Bhupesh Sharma wrote:
> Right now user-space tools like 'makedumpfile' and 'crash' need to rely
> on a best-guess method of determining value of 'MAX_PHYSMEM_BITS'
> supported by underlying kernel.
> 
> This value is used in user-space code to calculate the bit-space
> required to store a section for SPARESMEM (similar to the existing
> calculation method used in the kernel implementation):
> 
>    #define SECTIONS_SHIFT    (MAX_PHYSMEM_BITS - SECTION_SIZE_BITS)
> 
> Now, regressions have been reported in user-space utilities
> like 'makedumpfile' and 'crash' on arm64, with the recently added
> kernel support for 52-bit physical address space, as there is
> no clear method of determining this value in user-space
> (other than reading kernel CONFIG flags).
> 
> As per suggestion from makedumpfile maintainer (Kazu), it makes more
> sense to append 'MAX_PHYSMEM_BITS' to vmcoreinfo in the core code itself
> rather than in arch-specific code, so that the user-space code for other
> archs can also benefit from this addition to the vmcoreinfo and use it
> as a standard way of determining 'SECTIONS_SHIFT' value in user-land.
> 
> A reference 'makedumpfile' implementation which reads the
> 'MAX_PHYSMEM_BITS' value from vmcoreinfo in a arch-independent fashion
> is available here:
> 
> [0]. https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_bhupesh-2Dsharma_makedumpfile_blob_remove-2Dmax-2Dphys-2Dmem-2Dbit-2Dv1_arch_ppc64.c-23L471&d=DwICAg&c=RoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE&r=t2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=WdAKu3i_AeChZ2ZngChACvP5LtULN6mgHopxlQbu16Q&s=AYn-OBh6EqC80XVBg3oLc8ivaCwCNs-cm0PMkJ_2fjo&e=
> 
> Cc: Boris Petkov <bp@alien8.de>
> Cc: Ingo Molnar <mingo@kernel.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: James Morse <james.morse@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Steve Capper <steve.capper@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Dave Anderson <anderson@redhat.com>
> Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> Cc: x86@kernel.org
> Cc: linuxppc-dev@lists.ozlabs.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: kexec@lists.infradead.org
> Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>

Tested-by:  John Donnelly <john.p.donnelly@oracle.com>

> ---
>   kernel/crash_core.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/kernel/crash_core.c b/kernel/crash_core.c
> index 9f1557b98468..18175687133a 100644
> --- a/kernel/crash_core.c
> +++ b/kernel/crash_core.c
> @@ -413,6 +413,7 @@ static int __init crash_save_vmcoreinfo_init(void)
>   	VMCOREINFO_LENGTH(mem_section, NR_SECTION_ROOTS);
>   	VMCOREINFO_STRUCT_SIZE(mem_section);
>   	VMCOREINFO_OFFSET(mem_section, section_mem_map);
> +	VMCOREINFO_NUMBER(MAX_PHYSMEM_BITS);
>   #endif
>   	VMCOREINFO_STRUCT_SIZE(page);
>   	VMCOREINFO_STRUCT_SIZE(pglist_data);
> 


-- 
Thank You,
John

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
