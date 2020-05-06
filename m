Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2703C1C6969
	for <lists+kexec@lfdr.de>; Wed,  6 May 2020 08:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=czhmu3LzqceEQkFq8ORRp3k/7Aur+yuwbqrhpXZojo4=; b=Z202MVgE/apb7w
	zXfGH+OXMIA1O6QF+KPV2F+/796xY/YSaYV2j0x8FAAGByuoEgVFVz3OO0NVuSQmEDwLnN+fjWi3a
	BHLoYpzE54p+HcZ5TsJ7x9taDq5qkHnLj8AB/jS08XEMfaOXpQiu8OpBACiyEh1P4BiXq2TR/MBNC
	HYuoY2Z6LeF/Khx7y4E18xRdzqYphTJAKuc73ADuYqBIPTC+Mn51YpEbypmOzEBdBI49hfn9npC3/
	n7+H86UZbCzFnFHsmBWW6A2UDFSL194Lr/HqKfI3P0mG8PIzF3LRZBv/3IKUiqzOsrtakdFyalJu4
	1ud6//0f679p3R5HHFtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDuG-0003jz-HY; Wed, 06 May 2020 06:51:48 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDuE-0003jM-Cm
 for kexec@lists.infradead.org; Wed, 06 May 2020 06:51:47 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0466obNF024884; Tue, 5 May 2020 23:51:42 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=pfpt0818;
 bh=Km5/CeIEqBjHP0XZ0NaG6evT3ht/yRToAPcg7Fim9gQ=;
 b=jmPtxFCSHGHmFWvt97nhzompPPbdB/3UUDk3s3SHDqqdTu/EGi2uRCyWZeNoZRFrTzkE
 W8uULhambB4xpv89jRQ+FUqIQII9ROTZ9inUmoMU+YDF67yoDBvWpmMRRjeSIp4cqZWv
 QCMThpDFY5jNG9N/9onu7MczvRNRrmBo22dgf/nYCp21FN6dfYj5g6SDFmOzJg3Ks2Cz
 bEjFph8elD7C4FhcTafL+rcp+GsY8ZOuIPKOFNoySgv3+fytlX/mqTSH4IbMytq4XfwV
 z5ARLBa2c6Bua/U3ICj+XBOGwn0fQchfxqnwbdJkn+k2uBrn8oBQE1wiQCliQtVXZTWR xg== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0a-0016f401.pphosted.com with ESMTP id 30uaukus8r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 23:51:42 -0700
Received: from DC5-EXCH01.marvell.com (10.69.176.38) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 5 May 2020 23:51:40 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 5 May 2020 23:51:40 -0700
Received: from [10.193.46.2] (unknown [10.193.46.2])
 by maili.marvell.com (Postfix) with ESMTP id 22BA93F703F;
 Tue,  5 May 2020 23:51:36 -0700 (PDT)
Subject: Re: [EXT] [PATCH 1/2] net: qed*: Reduce RX and TX default ring count
 when running inside kdump kernel
To: Bhupesh Sharma <bhsharma@redhat.com>, <netdev@vger.kernel.org>
References: <1588705481-18385-1-git-send-email-bhsharma@redhat.com>
 <1588705481-18385-2-git-send-email-bhsharma@redhat.com>
From: Igor Russkikh <irusskikh@marvell.com>
Message-ID: <5ddc169b-f837-e478-43d9-4d6cf587aa05@marvell.com>
Date: Wed, 6 May 2020 09:51:35 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101
 Thunderbird/76.0
MIME-Version: 1.0
In-Reply-To: <1588705481-18385-2-git-send-email-bhsharma@redhat.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-06_02:2020-05-04,
 2020-05-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_235146_434013_C5A18F15 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: Ariel Elior <aelior@marvell.com>, Alok Prasad <palok@marvell.com>,
 Manish Chopra <manishc@marvell.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 GR-everest-linux-l2 <GR-everest-linux-l2@marvell.com>, bhupesh.linux@gmail.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



>  #include <linux/compiler.h>
> +#include <linux/crash_dump.h>
>  #include <linux/version.h>
>  #include <linux/workqueue.h>
>  #include <linux/netdevice.h>
> @@ -574,13 +575,13 @@ int qede_add_tc_flower_fltr(struct qede_dev *edev,
> __be16 proto,
>  #define RX_RING_SIZE		((u16)BIT(RX_RING_SIZE_POW))
>  #define NUM_RX_BDS_MAX		(RX_RING_SIZE - 1)
>  #define NUM_RX_BDS_MIN		128
> -#define NUM_RX_BDS_DEF		((u16)BIT(10) - 1)
> +#define NUM_RX_BDS_DEF		((is_kdump_kernel()) ? ((u16)BIT(6) - 1) :
> ((u16)BIT(10) - 1))
>  
>  #define TX_RING_SIZE_POW	13
>  #define TX_RING_SIZE		((u16)BIT(TX_RING_SIZE_POW))
>  #define NUM_TX_BDS_MAX		(TX_RING_SIZE - 1)
>  #define NUM_TX_BDS_MIN		128
> -#define NUM_TX_BDS_DEF		NUM_TX_BDS_MAX
> +#define NUM_TX_BDS_DEF		((is_kdump_kernel()) ? ((u16)BIT(6) - 1) :
> NUM_TX_BDS_MAX)
>  

Hi Bhupesh,

Thanks for looking into this. We are also analyzing how to reduce qed* memory
usage even more.

Patch is good, but may I suggest not to introduce conditional logic into the
defines but instead just add two new defines like NUM_[RT]X_BDS_MIN and check
for is_kdump_kernel() in the code explicitly?

if (is_kdump_kernel()) {
	edev->q_num_rx_buffers = NUM_RX_BDS_MIN;
	edev->q_num_tx_buffers = NUM_TX_BDS_MIN;
} else {
	edev->q_num_rx_buffers = NUM_RX_BDS_DEF;
	edev->q_num_tx_buffers = NUM_TX_BDS_DEF;
}

This may make configuration logic more explicit. If future we may want adding
more specific configs under this `if`.

Regards
  Igor

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
