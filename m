Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19930A3932
	for <lists+kexec@lfdr.de>; Fri, 30 Aug 2019 16:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X2rsfQjk2ea5YLE4l3M9T7W9G6eoSvhjPYfgCLb+aVo=; b=roTCCbZjWIg0gm
	aPMdwasyXBlqhHvKix4T5cgGhiv2j7refitisISRu/INQR4WT/l6m3tL3NwB9F++onK/TIQDoeZwz
	O4sgLhI3jYqtO4LExR0TAWuAFEB6gYy4GTOeU8eE3tH6f1Ox9JaODKAC1PE9XFh0b5rk4iy1+bV1U
	bYM/Ho8ms3Lgk5T7+owRfhJNpVZuI79b1nX2yuGYw8H+jJvAVFFEPy+smmSJfuge1VHEEI1LjOVog
	gchg48RI6mhuZN+A6LwL4xwzO2VEMpGyxcqxU0sndaqjC/x7AxmV8dn2d+vL5ztcCZUR/aEBilq62
	Aja60+NLywXJ7p82hT6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3hrI-00086l-T5; Fri, 30 Aug 2019 14:26:36 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3hrE-00086A-K8
 for kexec@lists.infradead.org; Fri, 30 Aug 2019 14:26:33 +0000
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7UEICZB059869
 for <kexec@lists.infradead.org>; Fri, 30 Aug 2019 10:26:30 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2uq3d1dp27-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <kexec@lists.infradead.org>; Fri, 30 Aug 2019 10:26:30 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <kexec@lists.infradead.org> from <prudo@linux.ibm.com>;
 Fri, 30 Aug 2019 15:26:28 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 30 Aug 2019 15:26:24 +0100
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7UEQNcA60489974
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 30 Aug 2019 14:26:23 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4E73E52050;
 Fri, 30 Aug 2019 14:26:23 +0000 (GMT)
Received: from laptop-ibm (unknown [9.152.212.29])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id 051935204E;
 Fri, 30 Aug 2019 14:26:22 +0000 (GMT)
Date: Fri, 30 Aug 2019 16:26:22 +0200
From: Philipp Rudo <prudo@linux.ibm.com>
To: Matthew Garrett <matthewgarrett@google.com>
Subject: Re: [PATCH V40 08/29] kexec_file: split KEXEC_VERIFY_SIG into
 KEXEC_SIG and KEXEC_SIG_FORCE
In-Reply-To: <20190820001805.241928-9-matthewgarrett@google.com>
References: <20190820001805.241928-1-matthewgarrett@google.com>
 <20190820001805.241928-9-matthewgarrett@google.com>
Organization: IBM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19083014-0008-0000-0000-0000030F0C7D
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19083014-0009-0000-0000-00004A2D5471
Message-Id: <20190830162622.534a0b8f@laptop-ibm>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-30_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908300147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_072632_782118_911149C7 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jiri Bohac <jbohac@suse.cz>, linux-api@vger.kernel.org,
 kexec@lists.infradead.org, jmorris@namei.org,
 Matthew Garrett <mjg59@google.com>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Matthew,

found a typo ...

On Mon, 19 Aug 2019 17:17:44 -0700
Matthew Garrett <matthewgarrett@google.com> wrote:

[...]

> index 6d0635ceddd0..9b4f37a4edf1 100644
> --- a/arch/s390/kernel/kexec_elf.c
> +++ b/arch/s390/kernel/kexec_elf.c
> @@ -130,7 +130,7 @@ static int s390_elf_probe(const char *buf, unsigned long len)
>  const struct kexec_file_ops s390_kexec_elf_ops = {
>  	.probe = s390_elf_probe,
>  	.load = s390_elf_load,
> -#ifdef CONFIG_KEXEC_VERIFY_SIG
> +#ifdef CONFIG_KEXEC__SIG
		      ^^
... here.
>  	.verify_sig = s390_verify_sig,
> -#endif /* CONFIG_KEXEC_VERIFY_SIG */
> +#endif /* CONFIG_KEXEC_SIG */
>  };

Thanks
Philipp


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
