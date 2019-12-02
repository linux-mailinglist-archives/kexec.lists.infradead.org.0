Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0847B10F3A5
	for <lists+kexec@lfdr.de>; Tue,  3 Dec 2019 00:56:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xMPHFOzlh1P49gpulB9hfi8wAz3lcyCP1qMssHCvH18=; b=gCgn6FgIpILwmvWwcPisWVxGx
	/YPHi7OeF2RHATPyJwXSCI5bC7sgUCLSHdBKxp7reNg/f5uAZ7RAC/ZSe7ovqRtm0+SoZ1vth1wg3
	W5QriW96L8OBnAaWhjkcLCUDeyfAJsyREnU/qXkdaCitS2y8BteppLQaxW/z7jFO8gmsNPnAVQCwX
	RUstTAqb/oHKefjIwStD7VxWKN/tInyTAVskt63EQ26GrBysTKf8IsT6csMaTblbFF3iVF9I/v/KM
	j3EEv/0LQr6iSIhEMVpjuGhRviIAqcASSmAx3cu8HK5zowtWnhVhvBvOCB4eSN5s3khY/qzDpOoSE
	D7f9RDVvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibvYd-0004KO-6H; Mon, 02 Dec 2019 23:56:47 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibvYX-0004Jw-Pl
 for kexec@lists.infradead.org; Mon, 02 Dec 2019 23:56:44 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB2NsX3l158292
 for <kexec@lists.infradead.org>; Mon, 2 Dec 2019 23:56:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=DZfRjcCk/iohRxT2n7Gq9qULVMAXRjL/NRyhkWDOV4M=;
 b=Eq6EfqPb8YR9ObE5YtwmNr3oGrk/aaYSFghDW9+VGDJjcq3X8dFkRTc1XYmY8qqCT4AU
 FF37P/vweD4bzyaccotQdZmaY/Qe3Z+BJ1zidIF2k1LQTS9PTy+nol/E/j3V6DcFdffh
 OU9BhjhOofTGPE1HHtO/DJw8teTRBPs7aI3NTzmPQyCUOvafFfApsvpz90IUqZwEzxtI
 ENGQniqXSde7prfqDl+0eefyh6IAExXCL6gWKULBZgtXU8P4THwtHdABddDdFR40La7o
 Dwgw3Lg1FaSF8V97eYO3kivXordwe11lpY2xaZRttS+3Kyyw/0/3DXYA2j6cjNYKizZg 7g== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2wkfuu3nwc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Mon, 02 Dec 2019 23:56:38 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB2NsS49076258
 for <kexec@lists.infradead.org>; Mon, 2 Dec 2019 23:56:37 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2wnb7udbfg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Mon, 02 Dec 2019 23:56:37 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xB2NuaTi019485
 for <kexec@lists.infradead.org>; Mon, 2 Dec 2019 23:56:36 GMT
Received: from [192.168.1.126] (/47.220.71.223)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 02 Dec 2019 15:56:36 -0800
Subject: Re: [RESEND PATCH v5 2/5] arm64/crash_core: Export TCR_EL1.T1SZ in
 vmcoreinfo
To: kexec@lists.infradead.org
References: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
 <1575057559-25496-3-git-send-email-bhsharma@redhat.com>
From: John Donnelly <John.P.Donnelly@Oracle.com>
Message-ID: <77006549-7cf8-29e2-3986-be0986b37dad@Oracle.com>
Date: Mon, 2 Dec 2019 17:56:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <1575057559-25496-3-git-send-email-bhsharma@redhat.com>
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
X-CRM114-CacheID: sfid-20191202_155641_965282_30C01088 
X-CRM114-Status: GOOD (  29.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
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
> vabits_actual variable on arm64 indicates the actual VA space size,
> and allows a single binary to support both 48-bit and 52-bit VA
> spaces.
> 
> If the ARMv8.2-LVA optional feature is present, and we are running
> with a 64KB page size; then it is possible to use 52-bits of address
> space for both userspace and kernel addresses. However, any kernel
> binary that supports 52-bit must also be able to fall back to 48-bit
> at early boot time if the hardware feature is not present.
> 
> Since TCR_EL1.T1SZ indicates the size offset of the memory region
> addressed by TTBR1_EL1 (and hence can be used for determining the
> vabits_actual value) it makes more sense to export the same in
> vmcoreinfo rather than vabits_actual variable, as the name of the
> variable can change in future kernel versions, but the architectural
> constructs like TCR_EL1.T1SZ can be used better to indicate intended
> specific fields to user-space.
> 
> User-space utilities like makedumpfile and crash-utility, need to
> read/write this value from/to vmcoreinfo for determining if a virtual
> address lies in the linear map range.
> 
> The user-space computation for determining whether an address lies in
> the linear map range is the same as we have in kernel-space:
> 
>    #define __is_lm_address(addr)	(!(((u64)addr) & BIT(vabits_actual - 1)))
> 
> I have sent out user-space patches for makedumpfile and crash-utility
> to add features for obtaining vabits_actual value from TCR_EL1.T1SZ (see
> [0] and [1]).
> 
> Akashi reported that he was able to use this patchset and the user-space
> changes to get user-space working fine with the 52-bit kernel VA
> changes (see [2]).
> 
> [0]. https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.infradead.org_pipermail_kexec_2019-2DNovember_023966.html&d=DwICAg&c=RoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE&r=t2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=hl1GOXoV3jxYFfIKiiUHZCo3tERnHZ8sNFncKCLsu0g&s=AuQKgcRrjZzeOv_rg3saDrjUlJJraGBptzAlDaUNirc&e=
> [1]. https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.infradead.org_pipermail_kexec_2019-2DNovember_024006.html&d=DwICAg&c=RoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE&r=t2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=hl1GOXoV3jxYFfIKiiUHZCo3tERnHZ8sNFncKCLsu0g&s=48CAvsBJrAJIyXWl_7dQd_a4HPt2dYKZ134lP3jDLA8&e=
> [2]. https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.infradead.org_pipermail_kexec_2019-2DNovember_023992.html&d=DwICAg&c=RoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE&r=t2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=hl1GOXoV3jxYFfIKiiUHZCo3tERnHZ8sNFncKCLsu0g&s=c-62ZXf5jXn9NYHIS_Qu6-xlbRjPPyG5D07RoEzVzC4&e=
> 
> Cc: James Morse <james.morse@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Steve Capper <steve.capper@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Dave Anderson <anderson@redhat.com>
> Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: kexec@lists.infradead.org
> Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>

Tested-by:  John Donnelly <john.p.donnelly@oracle.com>

> ---
>   arch/arm64/include/asm/pgtable-hwdef.h | 1 +
>   arch/arm64/kernel/crash_core.c         | 9 +++++++++
>   2 files changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
> index d9fbd433cc17..d2e7aff5821e 100644
> --- a/arch/arm64/include/asm/pgtable-hwdef.h
> +++ b/arch/arm64/include/asm/pgtable-hwdef.h
> @@ -215,6 +215,7 @@
>   #define TCR_TxSZ(x)		(TCR_T0SZ(x) | TCR_T1SZ(x))
>   #define TCR_TxSZ_WIDTH		6
>   #define TCR_T0SZ_MASK		(((UL(1) << TCR_TxSZ_WIDTH) - 1) << TCR_T0SZ_OFFSET)
> +#define TCR_T1SZ_MASK		(((UL(1) << TCR_TxSZ_WIDTH) - 1) << TCR_T1SZ_OFFSET)
>   
>   #define TCR_EPD0_SHIFT		7
>   #define TCR_EPD0_MASK		(UL(1) << TCR_EPD0_SHIFT)
> diff --git a/arch/arm64/kernel/crash_core.c b/arch/arm64/kernel/crash_core.c
> index ca4c3e12d8c5..f78310ba65ea 100644
> --- a/arch/arm64/kernel/crash_core.c
> +++ b/arch/arm64/kernel/crash_core.c
> @@ -7,6 +7,13 @@
>   #include <linux/crash_core.h>
>   #include <asm/memory.h>
>   
> +static inline u64 get_tcr_el1_t1sz(void);
> +
> +static inline u64 get_tcr_el1_t1sz(void)
> +{
> +	return (read_sysreg(tcr_el1) & TCR_T1SZ_MASK) >> TCR_T1SZ_OFFSET;
> +}
> +
>   void arch_crash_save_vmcoreinfo(void)
>   {
>   	VMCOREINFO_NUMBER(VA_BITS);
> @@ -15,5 +22,7 @@ void arch_crash_save_vmcoreinfo(void)
>   						kimage_voffset);
>   	vmcoreinfo_append_str("NUMBER(PHYS_OFFSET)=0x%llx\n",
>   						PHYS_OFFSET);
> +	vmcoreinfo_append_str("NUMBER(tcr_el1_t1sz)=0x%llx\n",
> +						get_tcr_el1_t1sz());
>   	vmcoreinfo_append_str("KERNELOFFSET=%lx\n", kaslr_offset());
>   }
> 


-- 
Thank You,
John

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
