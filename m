Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6B5186377
	for <lists+kexec@lfdr.de>; Mon, 16 Mar 2020 03:53:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:Date:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j4ZwMRXKljefsuHH1nBmLiTGpokHKcG/iWGpVPPCRuk=; b=mUHJxQ89l9Qg0BSku/Eko/zWk
	nMzniFpC5Vy9uiEPaOWkPavLsGn/Is9gGTSuROjkT3qCuijdv1ygDT0WN4ED/BBMIyuwxauzuskdQ
	EMLwvixYVl9en7lP2akP4EvAmfvHs7FZK4g5pAiPARrtTYpfOLDO8Ov1J5G9Qt1lGi/w8ctoMRHD6
	t+IotDgxYsFiP7l5tmzf6NIP9G3Zoi/8wdd/vhIVHQzMbLEFiXpiM9awTj3/QDh1DTfsvlVnAsm5c
	tH2vT8wz8ns4Hs9UOLmw/250HmaJ4X0bbzZq3JEuiE3lUOAhEr3pwRMwsdpXjb2sSsVYESH0X0E3D
	5U/bp3kqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDft7-0005n9-JF; Mon, 16 Mar 2020 02:53:57 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDft4-0005mb-D5
 for kexec@lists.infradead.org; Mon, 16 Mar 2020 02:53:56 +0000
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02G2rExC107908
 for <kexec@lists.infradead.org>; Sun, 15 Mar 2020 22:53:52 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2yru8s7uuu-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <kexec@lists.infradead.org>; Sun, 15 Mar 2020 22:53:51 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <kexec@lists.infradead.org> from <aneesh.kumar@linux.ibm.com>;
 Mon, 16 Mar 2020 02:53:50 -0000
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 16 Mar 2020 02:53:46 -0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 02G2rimi45089006
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 16 Mar 2020 02:53:44 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B71B24C044;
 Mon, 16 Mar 2020 02:53:44 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id BF6CC4C040;
 Mon, 16 Mar 2020 02:53:41 +0000 (GMT)
Received: from [9.85.83.196] (unknown [9.85.83.196])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Mon, 16 Mar 2020 02:53:41 +0000 (GMT)
Subject: Re: [PATCHv3 2/2] pseries/scm: buffer pmem's bound addr in dt for
 kexec kernel
To: Pingfan Liu <kernelfans@gmail.com>, linuxppc-dev@lists.ozlabs.org
References: <1582882895-3142-1-git-send-email-kernelfans@gmail.com>
 <1583311651-29310-1-git-send-email-kernelfans@gmail.com>
 <1583311651-29310-3-git-send-email-kernelfans@gmail.com>
From: "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>
Date: Mon, 16 Mar 2020 08:23:40 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1583311651-29310-3-git-send-email-kernelfans@gmail.com>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 20031602-0016-0000-0000-000002F1AF09
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20031602-0017-0000-0000-00003355289B
Message-Id: <41abb04e-d481-040f-827b-c04ad7d2abb9@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-15_05:2020-03-12,
 2020-03-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 lowpriorityscore=0 mlxscore=0
 clxscore=1011 phishscore=0 malwarescore=0 suspectscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003160005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_195354_592668_1E4F9EBF 
X-CRM114-Status: GOOD (  23.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Andrew Donnellan <ajd@linux.ibm.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, kexec@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Oliver O'Halloran <oohall@gmail.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Paul Mackerras <paulus@samba.org>,
 Dan Williams <dan.j.williams@intel.com>, Frank Rowand <frowand.list@gmail.com>,
 Hari Bathini <hbathini@linux.ibm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 3/4/20 2:17 PM, Pingfan Liu wrote:
> At present, plpar_hcall(H_SCM_BIND_MEM, ...) takes a very long time, so
> if dumping to fsdax, it will take a very long time.
> 


that should be fixed by

faa6d21153fd11e139dd880044521389b34a24f2
Author:       Aneesh Kumar K.V <aneesh.kumar@linux.ibm.com>
AuthorDate:   Tue Sep 3 18:04:52 2019 +0530
Commit:       Michael Ellerman <mpe@ellerman.id.au>
CommitDate:   Wed Sep 25 08:32:59 2019 +1000

powerpc/nvdimm: use H_SCM_QUERY hcall on H_OVERLAP error

Right now we force an unbind of SCM memory at drcindex on H_OVERLAP error.
This really slows down operations like kexec where we get the H_OVERLAP
error because we don't go through a full hypervisor re init.

H_OVERLAP error for a H_SCM_BIND_MEM hcall indicates that SCM memory at
drc index is already bound. Since we don't specify a logical memory
address for bind hcall, we can use the H_SCM_QUERY hcall to query
the already bound logical address.




> Take a closer look, during the papr_scm initialization, the only
> configuration is through drc_pmem_bind()-> plpar_hcall(H_SCM_BIND_MEM,
> ...), which helps to set up the bound address.
> 
> On pseries, for kexec -l/-p kernel, there is no reset of hardware, and this
> step can be stepped around to save times.  So the pmem bound address can be
> passed to the 2nd kernel through a dynamic added property "bound-addr" in
> dt node 'ibm,pmemory'.
> 

-aneesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
